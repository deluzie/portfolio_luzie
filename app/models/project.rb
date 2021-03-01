class Project < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  belongs_to :user
  has_one_attached :main_picture
  has_many_attached :primary_photos
  has_many_attached :secondary_photos
  validates :title, :introduction, :description, :year, presence: true

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).projects
  end
end
