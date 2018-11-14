class RoomsController < ApplicationController


	def new 
		@room = current_user.rooms.new
	end

	def create 
		@room = current_user.rooms.new(room_params)
		if @room.save 
			redirect_to room_path
		else
			render :new
		end 
	end 

	def index
		@rooms = Room.all 
	end 

	private 

	def room_params
		params.require(:room).permit(:name, :description)
	end 
end