class PasswordValidator
  def valid?(password)
    password.length >= 8 &&
      password.match?(/[A-Z]/) &&
      password.match?(/[0-9]/)
  end
end