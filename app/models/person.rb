class Person < ApplicationRecord
	has_many :addresses
	has_one :profile
	has_many :vehicles
end

