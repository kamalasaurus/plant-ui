# frozen_string_literal: true

require 'test_helper'

class GenerateCsvTest < ActiveSupport::TestCase
  setup do
    # @csv = file_fixture('truncated_seed_tubes.csv').read
    # @json = file_fixture('selected_tubes.json').read
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
