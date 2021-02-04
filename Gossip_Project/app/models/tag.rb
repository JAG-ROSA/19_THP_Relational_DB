class Tag < ApplicationRecord
  has_many :gossips, through: :hashtags
end
