class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.belongs_to :person, index: true 
      t.string :car_type
      t.string :color

      t.timestamps
    end
  end
end
