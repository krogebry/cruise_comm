class FixRoomId < ActiveRecord::Migration
  def up
  	remove_column :family_members, :room_id
  	add_column :family_members, :room_id, :string
  end

  def down
  end
end
