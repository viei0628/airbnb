class Castle < ApplicationRecord
  belongs_to :user
  validates :name, :address, :photo, presence: true
  has_many :reviews, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
end
