class AddAliasToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :aliaslastname, :string
  end
end
