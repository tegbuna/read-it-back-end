require "test_helper"

class WantToReadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @want_to_read = want_to_reads(:one)
  end

  test "should get index" do
    get want_to_reads_url, as: :json
    assert_response :success
  end

  test "should create want_to_read" do
    assert_difference('WantToRead.count') do
      post want_to_reads_url, params: { want_to_read: { author: @want_to_read.author, book_id: @want_to_read.book_id, have_read: @want_to_read.have_read, title: @want_to_read.title } }, as: :json
    end

    assert_response 201
  end

  test "should show want_to_read" do
    get want_to_read_url(@want_to_read), as: :json
    assert_response :success
  end

  test "should update want_to_read" do
    patch want_to_read_url(@want_to_read), params: { want_to_read: { author: @want_to_read.author, book_id: @want_to_read.book_id, have_read: @want_to_read.have_read, title: @want_to_read.title } }, as: :json
    assert_response 200
  end

  test "should destroy want_to_read" do
    assert_difference('WantToRead.count', -1) do
      delete want_to_read_url(@want_to_read), as: :json
    end

    assert_response 204
  end
end
