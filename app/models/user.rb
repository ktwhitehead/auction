class User < ApplicationRecord
  has_secure_password

  belongs_to :company

  validates_presence_of :first_name, :last_name, :email, :password_digest
end
