class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :refresh_token
      t.string :oauth_token
      t.string :name
      t.string :uid

      t.timestamps
    end
  end
end
