require "application_system_test_case"

class NewsPapersTest < ApplicationSystemTestCase
  setup do
    @news_paper = news_papers(:one)
  end

  test "visiting the index" do
    visit news_papers_url
    assert_selector "h1", text: "News Papers"
  end

  test "creating a News paper" do
    visit news_papers_url
    click_on "New News Paper"

    fill_in "Status", with: @news_paper.status
    fill_in "Title", with: @news_paper.title
    click_on "Create News paper"

    assert_text "News paper was successfully created"
    click_on "Back"
  end

  test "updating a News paper" do
    visit news_papers_url
    click_on "Edit", match: :first

    fill_in "Status", with: @news_paper.status
    fill_in "Title", with: @news_paper.title
    click_on "Update News paper"

    assert_text "News paper was successfully updated"
    click_on "Back"
  end

  test "destroying a News paper" do
    visit news_papers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News paper was successfully destroyed"
  end
end
