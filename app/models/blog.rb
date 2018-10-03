class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :presence => true , :length => {:in => 1..100}
  validates :body, :presence => true
  validates :image, :presence => true
end
