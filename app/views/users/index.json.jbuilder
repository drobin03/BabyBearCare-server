json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :new, :edit
  json.url user_url(user, format: :json)
end
