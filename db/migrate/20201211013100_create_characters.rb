# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :pronouns, null: false
      t.integer :level, null: false, default: 1
      t.string :totem, null: true
      t.string :status, default: 'Active'
      t.date :levelupdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.date :createdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :user, null: false, foreign_key: true
      t.references :deity, null: true, foreign_key: true
      t.references :race, null: false, foreign_key: true
      t.references :characterclass, null: false, foreign_key: true
      t.references :house, null: true, foreign_key: true
      t.references :guild, null: true, foreign_key: true
      t.timestamps
    end
  end
end
