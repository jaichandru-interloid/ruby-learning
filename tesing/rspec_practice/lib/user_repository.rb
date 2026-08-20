class User
  def self.find(id)
    "User #{id}"
  end
end

class UserService
  def find_user(id)
    User.find(id)
  end
end