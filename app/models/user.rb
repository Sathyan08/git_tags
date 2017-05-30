class User < ActiveRecord::Base

  validates :login, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def self.find_or_create_from_auth_hash(auth_hash)
    user_info = auth_hash.extra.raw_info

    User.find_by(login: user_info.login, email: user_info.email)
  end
end
