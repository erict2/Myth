class CreateSkillrequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :skillrequirements do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :requiredskill, null: false, foreign_key: {to_table: :skills}

      t.timestamps
    end
  end
end
