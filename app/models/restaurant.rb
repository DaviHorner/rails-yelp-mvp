class Restaurant < ApplicationRecord
  TYPE = %w( chinese italian japanese french belgian )

  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: TYPE, allow_nil: false }
end
