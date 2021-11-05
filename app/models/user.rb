class User < ApplicationRecord
  validates :username, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :age, presence: true
  validates :age, numericality: { greater_than: 18, less_than_or_equal_to: 100 }
end