# frozen_string_literal: true

require 'test_helper'

class GenerateCsvTest < ActiveSupport::TestCase
  setup do
    @json = JSON.parse(file_fixture('selected_tubes.json').read)
    binding.pry
  end

  test 'it should upload csv to db' do
    # upload = BulkUpload.parse(@csv)
    # assert_equal Seed.all.count, 112
    # assert_equal Seedbox.all.count, 28
    # assert_equal Population.all.count, 61
    # assert_equal Tube.all.count, 113
    # assert_empty upload.errors

    # file = GenerateCsv.parse(@json)
    # assert_equal ...
  end
end
