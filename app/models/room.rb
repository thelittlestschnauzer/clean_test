class Room < ApplicationRecord
	belongs_to :list
	belongs_to :chore
	
	validates_presence_of :name

	

end
