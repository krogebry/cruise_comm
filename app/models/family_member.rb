class FamilyMember < ActiveRecord::Base
	@room_name
  	attr_accessible :name, :room_id, :room_name
	has_many :comm_events
end
