class AddUserIdIndex < ActiveRecord::Migration
  def up
  	add_index :finances,:user_id
  end

  def down
  	remove_index :finances,:user_id
  end
end
