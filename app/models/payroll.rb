class Payroll < ApplicationRecord

validates :custname, :manufacturer, :prodid, :price, :dateofsale, presence: true
validates :custname, :manufacturer, length: {maximum: 20}
validates :prodid, uniqueness: true
validates :price, numericality: true

	
end
