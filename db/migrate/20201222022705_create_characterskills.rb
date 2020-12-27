class CreateCharacterskills < ActiveRecord::Migration[6.0]
  def change
    create_table :characterskills do |t|
      t.string :details
      t.references :skill, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.date :aquiredate, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
