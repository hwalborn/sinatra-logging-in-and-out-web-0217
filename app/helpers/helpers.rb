class Helpers
  def self.current_user(sesh)
    User.find(sesh[:user_id])
  end

  def self.is_logged_in?(sesh)
    # binding.pry
    sesh.has_key?(:user_id)
  end
end
