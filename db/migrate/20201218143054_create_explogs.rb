class CreateExplogs < ActiveRecord::Migration[6.0]
  def change
    create_table :explogs do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :aquiredate, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :name, null: false
      t.string :description, null: false
      t.integer :amount, null: false
      t.references :grantedby, null: false, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
