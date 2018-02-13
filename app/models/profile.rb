class Profile < ApplicationRecord
	belongs_to :person
	validates_presence_of :email_address, :age, :gender, :person_id
end
