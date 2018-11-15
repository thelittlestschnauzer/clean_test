class Chore < ApplicationRecord
	has_many :rooms
	has_many :lists, through: :rooms

	validates_presence_of :task


end
