# frozen_string_literal: true

class TubesByAccessions
  private_class_method :new
  attr_reader :errors, :csv

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
        species = species_abbr.upcase
        generation = generation_abbr.match(/(?<ge>\d$)/)[:ge]
        {
          species:,
          accession:,
          generation:,
          string: str
        }
      end.map do |blob|
        acc = Accession.get(blob[:accession])
        b = acc.seeds.select do |seed|
          seed.species_name == blob[:species]
        end
        c = b.select do |seed|
          seed.generation == blob[:generation]
        end

        # this is terrible, the worst code I've ever written
        d = (b.empty? && c.empty?) ? [] :
          (!b.empty? && c.empty?) ? b :
            c

        d.map do |accession|
          tubes = accession.tubes
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
