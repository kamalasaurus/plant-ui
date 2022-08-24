# frozen_string_literal: true

require 'test_helper'

class BulkSeedStateTest < ActiveSupport::TestCase
  setup do
    @csv = file_fixture('truncated_seed_tubes.csv').read
  end

  test 'it should upload csv to db' do
    BulkSeedState.upload(@csv)
    binding.pry
    # assert Seed.all.count is somehting
    assert true
  end
end
