class CommEvent < ActiveRecord::Base
    attr_accessible :username, :subject, :body, :ts, :family_member_id
	belongs_to :family_member
end
