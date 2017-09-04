class AddTitleToLyric < ActiveRecord::Migration[5.1]
  def change
    add_column :lyrics, :title, :string
  end
end
