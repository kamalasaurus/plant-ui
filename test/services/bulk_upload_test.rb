# frozen_string_literal: true

require 'test_helper'

class BulkUploadTest < ActiveSupport::TestCase
  setup do
    @csv = file_fixture('truncated_seed_tubes.csv').read
  end

  test 'it should upload csv to db' do
    upload = BulkUpload.parse(@csv)
    assert_equal 28, Seedbox.all.count
    assert_equal 61, Population.all.count
    assert_equal 112, Seed.all.count
    assert_equal 113, Tube.all.count
    assert_empty upload.errors
  end
end
