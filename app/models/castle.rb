class Castle < ApplicationRecord
  belongs_to :user
  validates :name, :address, :photo, presence: true
  has_many :reviews, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
