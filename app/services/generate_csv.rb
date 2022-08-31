# frozen_string_literal: true

require 'csv'

class GenerateCsv
  private_class_method :new
  attr_reader :errors

  def initialize(title, json)
    @errors = []
    @title = title.parameterize.underscore
    @json = json
    generate
  end

  def self.parse(title, json)
    new(title, json)
  end

  def success?
    @errors.empty?
  end

  private
  
  def filename
    "#{DateTime.now.strftime '%Y_%m_%d'}_#{@title}.csv"
  end

  def parse
    binding.pry
    # JSON.parse(@json)
    # process json here
    temp_file = Tempfile.new
    CSV.new(temp_file, "w") do |csv|
      csv << processed_json
    end
  end

  def processed_json
    JSON.parse(@json)
  end
end
