json.array!(@user_sessions) do |user_session|
  json.extract! user_session, :id, :username, :password, :new, :destroy
  json.url user_session_url(user_session, format: :json)
end
