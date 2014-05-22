class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
    	t.integer	:user_id,	null: false
    	t.string	:title,		null: false
    	t.string	:discription
    	t.integer	:budget
    	t.string	:image
    	t.timestamps
    end
  end
end
