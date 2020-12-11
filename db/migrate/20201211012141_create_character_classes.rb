class CreateCharacterClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.boolean :playeravailable
      t.timestamps
    end
  end
end
