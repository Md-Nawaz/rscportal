class Forwardlogistic < ApplicationRecord


	validates :oemcode, :factorycode, :prodid, :batchcode, :dealerid, :dateofship, :deliverydate, presence: true
	validates :oemcode, :factorycode, length: {maximum: 30}
	validates :prodid, uniqueness: true
	validates :noofunits, numericality: true, presence: true

	# accepts_nested_attributes_for :productid
	has_many :productid

end
