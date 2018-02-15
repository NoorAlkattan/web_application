class Person < ApplicationRecord
	has_many :addresses, :dependent => :destroy
	has_one :profile, :dependent => :destroy
	has_many :vehicles, :dependent => :destroy
	validates_presence_of :name, :phone_number, :date_of_birth
end
