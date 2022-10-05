# frozen_string_literal: true

require 'csv'

module CytometryReadingUpload
  def self.parse(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
      h = row.to_h

      attrs = h
        .except(:individual)
        .tap do |hash|
          hash[:peak_pattern] = hash[:peak_pattern].split(',')
          hash[:chromosome_count] = hash[:chromosome_count]&.scan(/(\d+)/)&.map(&:pop)&.map(&:to_i)
          hash[:chromosome_count_certain] = hash[:chromosome_count_certain] !~ /\?/ || false
        end

      ActiveRecord::Base.transaction do
        accession_id = Accession.get(h[:individual])&.id
        CytometryReading.upsert(attrs.merge({
          accession_id: accession_id
        }))
      rescue StandardError => e
        puts e
        puts attrs
      end
    end
  end
end