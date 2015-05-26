json.array!(@twitter_users) do |twitter_user|
  json.extract! twitter_user, :id, :screen_name, :name, :description, :profile_image_url, :profile_image_url_https
  json.url twitter_user_url(twitter_user, format: :json)
end
