# frozen_string_literal: true

class CreateCharacterclasses < ActiveRecord::Migration[6.0]
  def change
    create_table :characterclasses do |t|
      t.string :name, null: false
      t.boolean :playeravailable, null: false
      t.timestamps
    end
  end
end
