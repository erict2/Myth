# frozen_string_literal: true

class CreateResttypes < ActiveRecord::Migration[6.0]
  def change
    create_table :resttypes do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.boolean :playeravailable, null: false
      t.timestamps
    end
  end
end
