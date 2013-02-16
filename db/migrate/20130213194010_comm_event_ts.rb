class CommEventTs < ActiveRecord::Migration
  def up
  	add_column :comm_events, :ts, :timestamp
  end

  def down
  end
end
