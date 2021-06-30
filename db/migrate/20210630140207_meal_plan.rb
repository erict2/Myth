class MealPlan < ActiveRecord::Migration[6.0]
  def change
      add_column :events, :mealplan, :boolean
      add_column :events, :mealplancost, :integer
      change_column_null :events, :mealplan, false, false
      add_column :events, :mealplandetails, :text
      
      add_column :eventattendances, :mealplan, :string
  end
end
