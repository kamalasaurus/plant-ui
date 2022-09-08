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
        is_empty = tube['is_empty']
        # if is_empty use a different parser!!! -- different fields to generate
        # update fixture :/
        *, seedbox, position = id.split('-')
        if is_empty
          row = ['empty', seedbox, position]
        else
          [name, seedbox, population, accession] = parse(item)
          row = [name, seedbox, position, population, accession]
        end
        csv << row
      end
    end

    @file = csv
  end

  def parse(item)
    genus, species, _, label, * = item.split(' ')
    *, pop1, pop2, accession = label.split('-')
    name = "#{genus} #{species}"
    population = "#{pop1}-#{pop2}"
    [name, population, accession]
  end
end
