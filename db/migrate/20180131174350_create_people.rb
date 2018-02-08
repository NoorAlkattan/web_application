class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :date_of_birth
      t.string :phone_number

      t.timestamps
    end

    add_index :people, :name
    add_index :people, :date_of_birth
    add_index :people, :phone_number
  end
end
