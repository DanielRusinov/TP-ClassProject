require 'test_helper'

class MethsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meth = meths(:one)
  end

  test "should get index" do
    get meths_url
    assert_response :success
  end

  test "should get new" do
    get new_meth_url
    assert_response :success
  end

  test "should create meth" do
    assert_difference('Meth.count') do
      post meths_url, params: { meth: { description: @meth.description, program_id: @meth.program_id } }
    end

    assert_redirected_to meth_url(Meth.last)
  end

  test "should show meth" do
    get meth_url(@meth)
    assert_response :success
  end

  test "should get edit" do
    get edit_meth_url(@meth)
    assert_response :success
  end

  test "should update meth" do
    patch meth_url(@meth), params: { meth: { description: @meth.description, program_id: @meth.program_id } }
    assert_redirected_to meth_url(@meth)
  end

  test "should destroy meth" do
    assert_difference('Meth.count', -1) do
      delete meth_url(@meth)
    end

    assert_redirected_to meths_url
  end
end
