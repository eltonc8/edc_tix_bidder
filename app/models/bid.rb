class Bid < ActiveRecord::Base
  validates :price, presence: true, numericality: true, inclusion: 100..500
  validates :phone_number, :alias, presence: true
end
