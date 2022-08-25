# frozen_string_literal: true

require 'test_helper'

class BulkSeedStateTest < ActiveSupport::TestCase
  setup do
    @csv = file_fixture('truncated_seed_tubes.csv').read
  end

  test 'it should upload csv to db' do
    BulkSeedState.upload(@csv)
    puts Seed.all.count
    puts Seedbox.all.count
    puts Population.all.count
    puts Tube.all.count
    assert [
      Seed.all.count,
      Seedbox.all.count,
      Population.all.count,
      Tube.all.count
    ].all? { |x| x == 113 }
  end
end
