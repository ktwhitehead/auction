class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :company_divisions, dependent: :destroy
end
