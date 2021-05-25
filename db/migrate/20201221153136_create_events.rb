# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :eventtype, null: false
      t.string :location, null: false
      t.date :startdate, null: false
      t.date :enddate, null: false
      t.string :description, null: false
      t.integer :atdoorcost, default: 0
      t.integer :earlybirdcost, default: 0
      t.integer :eventexp, default: 300
      t.integer :feedbackexp, default: 100
      t.boolean :levelingevent, null: false
      t.timestamps
    end
  end
end
