class FamiliesController < ApplicationController
	before_action :set_family, only: [:edit, :update, :show, :destroy]

	def new
		@family = Family.new
		@family.users.build
	end 

	def index
		@families = Family.all.order("created_at DESC")
	end 

	def show 
		@family = Family.find(params[:id])
	end 

	def create 
		@family = Family.new(family_params)
		if @family.save 
			redirect_to family_path(@family)
		else
			render :new
		end 
	end 
		
	

	private 

	def set_family
		@family = Family.find(params[:id])
	end 

	def family_params
		params.require(:family).permit(:name, users_attributes: [:id, :email, :first_name])
	end 
	
end
