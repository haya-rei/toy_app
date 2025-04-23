json.extract! migropost, :id, :content, :user_id, :created_at, :updated_at
json.url migropost_url(migropost, format: :json)
