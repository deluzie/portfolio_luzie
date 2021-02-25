class Project < ApplicationRecord
  belongs_to :user
  has_one_attached :main_picture
  has_many_attached :primary_photos
  has_many_attached :secondary_photos
  validates :category, inclusion: { in: %w[design art code photography illustration material glass writing product graphic] }
  validates :title, :introduction, :description, :year, presence: true
end
