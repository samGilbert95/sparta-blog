class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :body, :presence => true, :length => {:in => 1..240}
end
