class AddFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :address, :string
    add_column :users, :is_lyricist, :boolean
    add_column :users, :is_melodist, :boolean
    add_column :users, :is_vocalist, :boolean        
  end
end
