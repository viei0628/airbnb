class Castle < ApplicationRecord
  validates :name, :address, presence: true
end
