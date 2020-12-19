class CreateExplogs < ActiveRecord::Migration[6.0]
  def change
    create_table :explogs do |t|
      t.references :character, null: false, foreign_key: true
      t.date :aquiredate, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :name, null: false
      t.string :description, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
