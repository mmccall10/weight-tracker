class Entry < ApplicationRecord
  validates :weight, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :date_entered, presence: true
  before_validation :ensure_date_entered
  belongs_to :user

  attribute :date_entered, default: Date.today

  def ensure_date_entered
    self.date_entered = Date.today if date_entered.blank?
  end
end
