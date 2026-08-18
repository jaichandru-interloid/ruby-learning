def process_user(user)
  if user[:active]
    yield user
  end
end