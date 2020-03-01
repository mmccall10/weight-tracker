class User < ApplicationRecord
  # validates :height_inches, numericality: { greater_than_or_equal_to: 0 }
  has_many :entries
end
