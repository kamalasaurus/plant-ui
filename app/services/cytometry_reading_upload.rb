# frozen_string_literal: true

require 'csv'

module CytometryReadingUpload
  def self.parse(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
      h = row.to_h

      attrs = h
        .except(:individual)
        .transform_keys({
          min_peak: :minimum_peak,
          meanf2: :mean_f2,
          chr_count: :chromosome_count
        })
        .tap do |hash|
          hash[:minimum_peak] = hash[:minimum_peak].to_i
          hash[:mean_f2] = hash[:mean_f2].to_f
          hash[:peak_pattern] = hash[:peak_pattern].split(',').map(&:to_i)
          hash[:chromosome_count] = hash[:chromosome_count]&.scan(/(\d+)/)&.map(&:pop)&.map(&:to_i)
          hash[:chromosome_count_certain] = hash[:chromosome_count] !~ /\?/ || false
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