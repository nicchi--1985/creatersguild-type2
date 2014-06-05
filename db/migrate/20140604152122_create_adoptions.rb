class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
    	t.integer	:user_id
    	t.integer	:suggestion_id
    	t.string 	:comment
		t.timestamps
    end
  end
end
