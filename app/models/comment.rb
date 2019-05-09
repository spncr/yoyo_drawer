class Comment < ApplicationRecord
  belongs_to :yoyo
  validates :email, :presence => true
  end
