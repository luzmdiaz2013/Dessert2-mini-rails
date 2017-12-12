class Dessert < ApplicationRecord
  belongs_to :customer
  has_many :customers
end
