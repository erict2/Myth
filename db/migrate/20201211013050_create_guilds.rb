class CreateGuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :guilds do |t|
      t.string :name
      t.date :createdate, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :player, null: false, foreign_key: {name: 'guildmaster_id'}
      t.timestamps
    end
  end
end
