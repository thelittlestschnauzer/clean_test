class Family < ApplicationRecord
	has_many :users
	

	accepts_nested_attributes_for :users, reject_if: :all_blank
	accepts_nested_attributes_for :rooms, reject_if: :all_blank
	
end
