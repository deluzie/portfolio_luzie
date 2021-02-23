class Project < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :title, :description, presence: true
end
