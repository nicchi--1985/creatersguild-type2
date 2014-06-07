class CreateGuestMessages < ActiveRecord::Migration
  def change
    create_table :guest_messages do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
