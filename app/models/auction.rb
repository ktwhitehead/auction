class Auction < ApplicationRecord
  belongs_to :company_division
  has_many :items, dependent: :destroy
end
