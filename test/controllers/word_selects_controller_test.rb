require 'test_helper'

class WordSelectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_select = word_selects(:one)
  end

  test "should get index" do
    get word_selects_url
    assert_response :success
  end

  test "should get new" do
    get new_word_select_url
    assert_response :success
  end

  test "should create word_select" do
    assert_difference('WordSelect.count') do
      post word_selects_url, params: { word_select: { adjective1: @word_select.adjective1, adjective2: @word_select.adjective2, adjective3: @word_select.adjective3, noun1: @word_select.noun1, noun2: @word_select.noun2, noun3: @word_select.noun3, place1: @word_select.place1, place2: @word_select.place2, string: @word_select.string, verb1: @word_select.verb1, verb2: @word_select.verb2, verb3: @word_select.verb3 } }
    end

    assert_redirected_to word_select_url(WordSelect.last)
  end

  test "should show word_select" do
    get word_select_url(@word_select)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_select_url(@word_select)
    assert_response :success
  end

  test "should update word_select" do
    patch word_select_url(@word_select), params: { word_select: { adjective1: @word_select.adjective1, adjective2: @word_select.adjective2, adjective3: @word_select.adjective3, noun1: @word_select.noun1, noun2: @word_select.noun2, noun3: @word_select.noun3, place1: @word_select.place1, place2: @word_select.place2, string: @word_select.string, verb1: @word_select.verb1, verb2: @word_select.verb2, verb3: @word_select.verb3 } }
    assert_redirected_to word_select_url(@word_select)
  end

  test "should destroy word_select" do
    assert_difference('WordSelect.count', -1) do
      delete word_select_url(@word_select)
    end

    assert_redirected_to word_selects_url
  end
end
