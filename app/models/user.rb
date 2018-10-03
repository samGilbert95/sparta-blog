class User < ApplicationRecord
  has_many :blogs
  has_many :comments
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :dob, :presence => true

  def full_name
    "#{first_name} #{last_name}"
  end
end
