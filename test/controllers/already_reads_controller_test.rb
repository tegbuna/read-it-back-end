require "test_helper"

class AlreadyReadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @already_read = already_reads(:one)
  end

  test "should get index" do
    get already_reads_url, as: :json
    assert_response :success
  end

  test "should create already_read" do
    assert_difference('AlreadyRead.count') do
      post already_reads_url, params: { already_read: { author: @already_read.author, book_id: @already_read.book_id, have_read: @already_read.have_read, title: @already_read.title } }, as: :json
    end

    assert_response 201
  end

  test "should show already_read" do
    get already_read_url(@already_read), as: :json
    assert_response :success
  end

  test "should update already_read" do
    patch already_read_url(@already_read), params: { already_read: { author: @already_read.author, book_id: @already_read.book_id, have_read: @already_read.have_read, title: @already_read.title } }, as: :json
    assert_response 200
  end

  test "should destroy already_read" do
    assert_difference('AlreadyRead.count', -1) do
      delete already_read_url(@already_read), as: :json
    end

    assert_response 204
  end
end
