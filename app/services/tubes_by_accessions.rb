# frozen_string_literal: true

class TubesByAccessions
  private_class_method :new
  attr_reader :errors, :csv

  SPECIES = {
    ath: 'arabidopsis-thaliana',
    chi: 'cardamine-hirsuta',
    dve: 'draba-verna'
  }.freeze

  def self.parse(tube_string)
    new(tube_string)
  end

  def initialize(tube_list)
    @errors = []
    @tubes = tube_list.split("\n")
    @csv = nil
    to_csv parse
  end

  def success?
    @errors.empty?
  end

  private

  def to_csv(tube_list)
    @csv = CSV.generate do |csv|
      csv << tube_list.first.keys
      tube_list.each do |tube|
        csv << tube.values
      end
    end
  rescue StandardError => e
    @errors << e
  end

  def parse
    @tubes
      .map do |str|
        species_abbr, accession, generation_abbr = str.split('_')
        species = SPECIES[species_abbr.downcase.to_sym]
        generation = generation_abbr.match(/(?<ge>\d$)/)[:ge]
        {
          species: species,
          accession: accession,
          generation: generation,
          string: str
        }
      end.map do |blob|
        acc = Accession.get(blob[:accession])
        b = acc.seeds.where(
          species: blob[:species],
          generation: blob[:generation]
        )
        b = b.empty? ?
          acc.seeds.where(species: blob[:species]) :
          b
        b.map do |acc|
          tubes = acc.tubes
          tubes.map do |tube|
            {
              seedbox: tube.seedbox.name,
              species: tube.seed.species.name,
              accession: tube.seed.accession.name,
              generation: tube.seed.generation,
              position: tube.position,
              submission: blob[:string]
            }
          end
        end
      end.flatten.sort_by { |c| c[:submission] }
  rescue StandardError => e
    @errors << e
  ensure
    @tubes
  end
end