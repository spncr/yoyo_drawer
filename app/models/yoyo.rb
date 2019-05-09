class Yoyo < ApplicationRecord
  has_one_attached :image
  has_many :comments
  belongs_to :model
  has_one :maker, through: :model
end
