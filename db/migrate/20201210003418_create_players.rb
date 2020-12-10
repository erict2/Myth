class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :emailaddress, :unique => true
      t.string :playertype
      t.date :joindate, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
