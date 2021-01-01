class CreateCharacterprofessions < ActiveRecord::Migration[6.0]
  def change
    create_table :characterprofessions do |t|
      t.references :profession, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.date :acquiredate, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
