class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string	:name, unique: true
      t.text 	:profile
      t.string	:post_code
      t.string	:address
      t.integer	:tel
      t.timestamps
    end
  end
end
