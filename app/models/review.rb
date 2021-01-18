class Review < ApplicationRecord
  belongs_to :castle

  validates :content, presence: true
end
