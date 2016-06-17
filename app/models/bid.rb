class Bid < ActiveRecord::Base
  validates_inclusion_of :price, :in => 100..500, message: "The price must be an integer > 100 and <= 500"
  validates :phone_number, :alias, presence: true
end
