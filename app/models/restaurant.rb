class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

end
