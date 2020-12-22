class CreateCharacterclassskillgroups < ActiveRecord::Migration[6.0]
  def change
    create_table :characterclassskillgroups do |t|
      t.references :skillgroup, null: false, foreign_key: true
      t.references :characterclass, null: false, foreign_key: true
      t.timestamps
    end
  end
end
