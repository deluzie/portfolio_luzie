class Project < ApplicationRecord
  belongs_to :user
  has_one_attached :main_picture
  has_many_attached :photos
  validates :title, :description, presence: true
end
