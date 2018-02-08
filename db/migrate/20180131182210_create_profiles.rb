class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :person, index: true
      t.string :gender
      t.string :email_address
      t.string :age
      t.boolean :active, default: true


      t.timestamps
    end
  end
end

