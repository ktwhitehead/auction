class User < ApplicationRecord
  has_secure_password

  belongs_to :company

  validates_presence_of :first_name, :last_name, :email, :password_digest
  # validates_uniqueness_of :email

  # rescue ActiveRecord::RecordNotUnique
  #   puts("KEATON OK")
  #   raise(ExceptionHandler::EmailTaken, ("#{Message.email_taken} #{e.message}"))
end
