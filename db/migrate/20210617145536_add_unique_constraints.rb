class AddUniqueConstraints < ActiveRecord::Migration[6.0]
  def change
    add_index :eventattendances, [:event_id, :user_id], unique: true
    add_index :characterprofessions, [:character_id, :profession_id], unique: true
  end
end