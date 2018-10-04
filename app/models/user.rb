class User < ApplicationRecord
  has_many :blogs
  has_many :comments
  validates :first_name, :presence => true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :last_name, :presence => true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :dob, :presence => true

  def full_name
    "#{first_name} #{last_name}"
  end
end
