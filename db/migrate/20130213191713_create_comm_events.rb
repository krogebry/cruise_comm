class CreateCommEvents < ActiveRecord::Migration
  def change
    create_table :comm_events do |t|

      t.timestamps
    end
  end
end
