class Comment < ApplicationRecord
  belongs_to :yoyo
  validates :author_email, :presence => true
  end
