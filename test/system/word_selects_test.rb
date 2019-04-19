require "application_system_test_case"

class WordSelectsTest < ApplicationSystemTestCase
  setup do
    @word_select = word_selects(:one)
  end

  test "visiting the index" do
    visit word_selects_url
    assert_selector "h1", text: "Word Selects"
  end

  test "creating a Word select" do
    visit word_selects_url
    click_on "New Word Select"

    fill_in "Adjective1", with: @word_select.adjective1
    fill_in "Adjective2", with: @word_select.adjective2
    fill_in "Adjective3", with: @word_select.adjective3
    fill_in "Noun1", with: @word_select.noun1
    fill_in "Noun2", with: @word_select.noun2
    fill_in "Noun3", with: @word_select.noun3
    fill_in "Place1", with: @word_select.place1
    fill_in "Place2", with: @word_select.place2
    fill_in "String", with: @word_select.string
    fill_in "Verb1", with: @word_select.verb1
    fill_in "Verb2", with: @word_select.verb2
    fill_in "Verb3", with: @word_select.verb3
    click_on "Create Word select"

    assert_text "Word select was successfully created"
    click_on "Back"
  end

  test "updating a Word select" do
    visit word_selects_url
    click_on "Edit", match: :first

    fill_in "Adjective1", with: @word_select.adjective1
    fill_in "Adjective2", with: @word_select.adjective2
    fill_in "Adjective3", with: @word_select.adjective3
    fill_in "Noun1", with: @word_select.noun1
    fill_in "Noun2", with: @word_select.noun2
    fill_in "Noun3", with: @word_select.noun3
    fill_in "Place1", with: @word_select.place1
    fill_in "Place2", with: @word_select.place2
    fill_in "String", with: @word_select.string
    fill_in "Verb1", with: @word_select.verb1
    fill_in "Verb2", with: @word_select.verb2
    fill_in "Verb3", with: @word_select.verb3
    click_on "Update Word select"

    assert_text "Word select was successfully updated"
    click_on "Back"
  end

  test "destroying a Word select" do
    visit word_selects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Word select was successfully destroyed"
  end
end
