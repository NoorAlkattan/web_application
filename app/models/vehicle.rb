class Vehicle < ApplicationRecord
  belongs_to :person
  validates_presence_of :car_type, :color, :person_id
end
