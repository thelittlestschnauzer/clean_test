class Room < ApplicationRecord
	has_many :lists
	has_many :chores, through: :lists

	accepts_nested_attributes_for :lists
end
