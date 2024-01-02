json.extract! topic_comment, :id, :body, :topic_id, :created_at, :updated_at
json.url topic_comment_url(topic_comment, format: :json)
