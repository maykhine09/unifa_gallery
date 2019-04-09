require 'bcrypt'

class User < ApplicationRecord
  # users.password_hash in the database is a :string
  include BCrypt

  has_many :photos, inverse_of: :user, dependent: :destroy
  validates :login_name, uniqueness: true, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
