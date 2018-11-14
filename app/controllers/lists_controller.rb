class ListsController < ApplicationController
	before_action :set_list, only: [:edit, :show, :update, :destroy]
	def new 
		@list = List.new
		@list.chores.build 
	end 

	def index 
		@lists = List.all
	end 

	def show 
	end 

	def create
		@list = List.create(list_params)
		raise @list.inspect
		redirect_to @list
	end 


	private 

	def list_params
		params.require(:list).permit(:title, chores_attributes: [:task, rooms_attributes: [:name]])
	end 

	def set_list
		@list = List.find(params[:id])
	end 
end
