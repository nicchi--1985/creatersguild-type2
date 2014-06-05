class ChangeColumnAdoptions < ActiveRecord::Migration
  def change
  	remove_column 	:adoptions, :user_id, :integer
  	add_column		:adoptions, :request_id, :integer
  end
end
