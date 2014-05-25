class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
    	t.integer	:user_id,		null: false
    	t.integer	:request_id,	null: false
    	t.string 	:title,			null: false
    	t.integer	:price,			null: false
    	t.string	:pr_text,		null: false
    	t.string	:image
    	t.timestamps
    end
  end
end
