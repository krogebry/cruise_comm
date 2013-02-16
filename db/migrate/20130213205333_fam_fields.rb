class FamFields < ActiveRecord::Migration
  def up
  	add_column :family_members, :name, :string
  	add_column :family_members, :room_id, :int
  	add_column :rooms, :family_member_id, :int
  end

  def down
  end
end
