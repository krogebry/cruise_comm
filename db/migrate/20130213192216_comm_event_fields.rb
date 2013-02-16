class CommEventFields < ActiveRecord::Migration
  def up
  	add_column :comm_events,:username, :string
  	add_column :comm_events,:subject, :string
  	add_column :comm_events,:body, :string
  end

  def down
  end
end
