json.users do
  json.array! @users do |user|
    json.partial! 'api/users/info', user: user
  end
end
