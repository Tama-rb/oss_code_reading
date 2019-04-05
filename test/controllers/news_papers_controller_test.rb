require 'test_helper'

class NewsPapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_paper = news_papers(:one)
  end

  test "should get index" do
    get news_papers_url
    assert_response :success
  end

  test "should get new" do
    get new_news_paper_url
    assert_response :success
  end

  test "should create news_paper" do
    assert_difference('NewsPaper.count') do
      post news_papers_url, params: { news_paper: { status: @news_paper.status, title: @news_paper.title } }
    end

    assert_redirected_to news_paper_url(NewsPaper.last)
  end

  test "should show news_paper" do
    get news_paper_url(@news_paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_paper_url(@news_paper)
    assert_response :success
  end

  test "should update news_paper" do
    patch news_paper_url(@news_paper), params: { news_paper: { status: @news_paper.status, title: @news_paper.title } }
    assert_redirected_to news_paper_url(@news_paper)
  end

  test "should destroy news_paper" do
    assert_difference('NewsPaper.count', -1) do
      delete news_paper_url(@news_paper)
    end

    assert_redirected_to news_papers_url
  end
end
