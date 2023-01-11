# frozen_string_literal: true

require 'csv'

class JsonCsvConverter
  private_class_method :new
  attr_reader :file

  def initialize(json)
    @depth_counters = []
    @file = nil
    parse(json)
  end

  def self.call(json)
    new(json)
  end

  private

  def generate_csv(rows)
    csv = CSV.generate do |csv|
      csv << rows.first.keys
      rows.each do |row|
        csv << row.values
      end
    end

    @file = csv
  end

  def recurse(node, key, depth_counter)
    case node
    when String, Numeric, TrueClass, FalseClass, NilClass
      Hash[key, node]
    when Hash
      @depth_counters << depth_counter if node.length > 1
      node.entries.map do |inner_key, val|
        recurse(val, "#{key}.#{inner_key}", depth_counter + 1)
      end
    when Array
      @depth_counters << depth_counter if node.length > 1
      node.map do |el|
        recurse(el, key, depth_counter + 1)
      end
    end
  end

  def parse(json)
    rows = json.map do |(key, node)|
      recurse(node, key, 1).flatten(@depth_counters.min)
    end
      .flatten(1)
      .map { |node| node.flatten.reduce Hash.new, :merge }

    generate_csv(rows)
  end
end