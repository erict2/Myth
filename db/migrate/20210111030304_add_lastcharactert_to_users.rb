class AddLastcharactertToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_character, :integer
  end
end