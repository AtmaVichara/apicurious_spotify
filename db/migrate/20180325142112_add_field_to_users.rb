class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :expires_in, :string
  end
end
