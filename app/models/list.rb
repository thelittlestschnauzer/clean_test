class List < ApplicationRecord
	has_many :rooms
	has_many :chores, through: :rooms

	validates_presence_of :title


	def chores_attributes=(chores_attributes)
		# raise chores_attributes.values.inspect
		chores_attributes.values.each do |chores_attribute|
			if !chores_attribute["task"].empty?
				chore = Chore.find_or_create_by(task: chores_attribute["task"])
				self.rooms.build(list: self, chore: chore, name: chores_attribute["rooms"]["name"])
				raise self.inspect
			end 
		end 
	end 


end
