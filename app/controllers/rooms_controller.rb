class RoomsController < ApplicationController


	def new 
		@room = current_user.rooms.new
		@room.lists.build
	end

	def create 
		@room = current_user.rooms.new(room_params)
		redirect_to(@room) 
			
	end 

	def show 
		@room = Room.find_by(params[:id])
	end 

	def index
		@rooms = Room.all 
	end 

	private 

	def room_params
		params.require(:room).permit(:name, :description, lists_attributes: [:title, chores_attributes: [:task]])
	end 
end
