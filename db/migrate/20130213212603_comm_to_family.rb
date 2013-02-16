class CommToFamily < ActiveRecord::Migration
  def up
  	add_column :comm_events, :family_member_id, :int
  end

  def down
  end
end
