# frozen_string_literal: true

require 'csv'

class GenerateCsv
  private_class_method :new
  attr_reader :errors, :file

  def initialize(tubes)
    @errors = []
    @tubes = tubes
    @file = nil
    generate
  end

  def self.generate(tubes)
    new(tubes)
  end

  def success?
    @errors.empty?
  end

  private

  def generate
    csv = CSV.generate do |csv|
      csv << ['name', 'seedbox', 'position', 'population', 'accession'] # headers
      @tubes.each do |tube|
        id = tube['id']
        item = tube['item']
        *, position = id.split('-')
        genus, species, seedbox, label, * = item.split(' ')
        *, pop1, pop2, accession = label.split('-')
        name = "#{genus} #{species}"
        population = "#{pop1}-#{pop2}"
        row = [name, seedbox, position, population, accession]
        csv << row
      end
    end

    @file = csv
  end
end
