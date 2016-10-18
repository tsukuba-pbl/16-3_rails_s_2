json.extract! user, :id, :name, :avatar, :remove_avatar, :avatar_cache, :created_at, :updated_at
json.url user_url(user, format: :json)