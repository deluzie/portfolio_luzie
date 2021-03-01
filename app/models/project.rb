class Project < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user
  has_one_attached :main_picture
  has_many_attached :primary_photos
  has_many_attached :secondary_photos
  validates :title, :introduction, :description, :year, presence: true
end
