# frozen_string_literal: true

class CreateProfessionrequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :professionrequirements do |t|
      t.references :profession, null: false, foreign_key: true
      t.references :requiredprofession, null: false, foreign_key: { to_table: :professions }
      t.timestamps
    end
  end
end
