class Address < ApplicationRecord
	belongs_to :person
	validates_presence_of :street, :city, :zipcode, :person_id
end
