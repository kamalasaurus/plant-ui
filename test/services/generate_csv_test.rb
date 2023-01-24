# frozen_string_literal: true

require 'test_helper'

class GenerateCsvTest < ActiveSupport::TestCase
  setup do
    @json = JSON.parse(file_fixture('critical_seed_tubes.json').read)
    @tubes = @json['selected_tubes']
  end

  test 'it should generate a csv string' do
    csv = GenerateCsv.generate(@tubes)
    assert_instance_of String, csv.file
    assert_equal csv.file.split(/\n/).count, @tubes.length + 1
    assert_equal csv.file.split(/\n/).first, 'name,seedbox,position,population,accession'
    assert_empty csv.errors
  end
end
