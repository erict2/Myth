class AddAliasFields < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :alias, :string
  end
end
