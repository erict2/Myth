class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :startdate, null: false
      t.date :enddate, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
