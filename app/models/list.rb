class List < ApplicationRecord
	has_many :chores
	has_many :rooms, through: :chores

	accepts_nested_attributes_for :chores
end
