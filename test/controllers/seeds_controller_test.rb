require 'test_helper'

class SeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seed = seeds(:one)
  end

  test 'should get index' do
    get seeds_url
    assert_response :success
  end

  test 'should get new' do
    get new_seed_url
    assert_response :success
  end

  test 'should create seed' do
    assert_difference('Seed.count') do
      post seeds_url,
           params: { seed: { generation: @seed.generation, location: @seed.location, quantity: @seed.quantity,
                             seedbox: @seed.seedbox, species: @seed.species } }
    end

    assert_redirected_to seed_url(Seed.last)
  end

  test 'should show seed' do
    get seed_url(@seed)
    assert_response :success
  end

  test 'should get edit' do
    get edit_seed_url(@seed)
    assert_response :success
  end

  test 'should update seed' do
    patch seed_url(@seed),
          params: { seed: { generation: @seed.generation, location: @seed.location, quantity: @seed.quantity,
                            seedbox: @seed.seedbox, species: @seed.species } }
    assert_redirected_to seed_url(@seed)
  end

  test 'should destroy seed' do
    assert_difference('Seed.count', -1) do
      delete seed_url(@seed)
    end

    assert_redirected_to seeds_url
  end
end
