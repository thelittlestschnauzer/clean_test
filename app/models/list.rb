class List < ApplicationRecord
	has_many :chores
	has_many :rooms, through: :chores

	validates_presence_of :title

	accepts_nested_attributes_for :chores

	def chores_attributes=(chores_attributes)
		raise chores_attributes.inspect
	end 
end
