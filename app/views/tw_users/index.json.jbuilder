json.array!(@tw_users) do |tw_user|
  json.extract! tw_user, :id, :screen_name, :name, :description, :profile_image_url, :profile_image_url_https
  json.url tw_user_url(tw_user, format: :json)
end
