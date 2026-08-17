# frozen_string_literal: true

class User
  def name
    'Real user'
  end
end

class Welcome
  def message(user)
    "Hello, #{user.name}"
  end
end

user = User.new

welcome = Welcome.new

welcome.message(user)