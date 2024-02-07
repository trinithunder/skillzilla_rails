json.extract! social_medium, :id, :title, :url, :created_at, :updated_at
json.url social_medium_url(social_medium, format: :json)
