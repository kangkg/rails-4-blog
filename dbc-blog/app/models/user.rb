class User < ActiveRecord::Base

	has_many :entries, foreign_key: :author_id

  validates :username, presence: { message: "Error: You must have a name!" }
  validates :password_digest, uniqueness: { message: "Error: You must provide a new email!" }, presence: { message: "Error: You must provide a password!" }
  
  # Bcrypt Code:
  has_secure_password

end