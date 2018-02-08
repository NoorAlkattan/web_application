class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :person, index: true 
      t.string :street
      t.string :city
      t.string :zipcode


      t.timestamps
    end
  end
end

