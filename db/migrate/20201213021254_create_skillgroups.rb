class CreateSkillgroups < ActiveRecord::Migration[6.0]
  def change
    create_table :skillgroups do |t|
      t.string :name
      t.string :description
      t.boolean :playeravailable

      t.timestamps
    end
  end
end
