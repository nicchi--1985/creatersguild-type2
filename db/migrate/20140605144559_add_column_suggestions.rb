class AddColumnSuggestions < ActiveRecord::Migration
  def change
  	add_column :suggestions, :adopted, :boolean
  end
end
