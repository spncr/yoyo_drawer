class Model < ApplicationRecord
  belongs_to :maker
  has_many :yoyo
end
