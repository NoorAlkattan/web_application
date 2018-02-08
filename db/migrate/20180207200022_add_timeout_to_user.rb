class AddTimeoutToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :timeout, :integer
  end
end
