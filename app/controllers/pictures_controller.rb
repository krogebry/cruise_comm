
FS_PIC_ROOT = "/Users/bryankroger/Documents/Vacation_Cruise_2013"

class PicturesController < ApplicationController

	def index
		@pictures = Dir.glob( "%s/dolphin_adventure/*.JPG" % FS_PIC_ROOT )
		respond_to do |f|
			f.html
		end
	end

	def show
		@picture = "%s/dolphin_adventure/%s.%s" % [FS_PIC_ROOT,params[:pic_id],params[:format]]
		send_file( @picture )
	end
end
