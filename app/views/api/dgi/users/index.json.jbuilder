json.users do
  json.array! @users do |user|
    json.partial! 'api/dgi/users/info', user: user
  end
end
