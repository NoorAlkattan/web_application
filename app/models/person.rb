class Person < ApplicationRecord
	has_many :addresses
	has_one :profile
	has_many :vehicles
	validates_presence_of :name, :phone_number, :date_of_birth
end
