json.extract! news_paper, :id, :title, :status, :created_at, :updated_at
json.url news_paper_url(news_paper, format: :json)
