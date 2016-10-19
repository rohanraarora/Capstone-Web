json.extract! news, :id, :title, :content, :url, :created_at, :updated_at
json.url news_url(news, format: :json)