# frozen_string_literal: true

class AddDescriptionFields < ActiveRecord::Migration[6.0]
  def change
    add_column :races, :shortdescription, :string
    add_column :characterclasses, :shortdescription, :string
    add_column :deities, :shortdescription, :string
  end
end
