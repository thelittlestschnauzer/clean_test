class Chore < ApplicationRecord
	has_many :lists
	has_many :rooms, through: :lists

	validates_presence_of :task

	accepts_nested_attributes_for :rooms
end
