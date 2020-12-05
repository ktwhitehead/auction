class CompanyDivision < ApplicationRecord
  has_many :auctions
  belongs_to :company
end
