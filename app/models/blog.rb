class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :presence => true
  validates :body, :presence => true
  validates :image, :presence => true
end
