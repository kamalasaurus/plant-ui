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
      csv << %w[name seedbox position population accession critical] # headers
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
          name, population, accession, critical = parse(item)
          row = [name, seedbox, position, population, accession, critical]
        end
        csv << row
      end
    rescue StandardError => e
      @errors << e
    end

    @file = csv
  end

  def parse(item)
    genus, species, _, label, * = item.split
    *, crit = item.split
    critical = crit == 'critical'
    *, pop1, pop2, accession = label.split('-')
    name = "#{genus} #{species}"
    population = "#{pop1}-#{pop2}"
    [name, population, accession, critical]
  rescue StandardError => e
    @errors << e
  end
end
