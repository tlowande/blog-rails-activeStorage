json.extract! article, :id, :title, :text, :created_at, :updated_at, :image_urls
json.url article_url(article, format: :json)
