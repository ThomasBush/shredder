class Exercise < ActiveRecord::Base

	attr_accessible :name, :workout_id, :lifts_attributes
  	belongs_to :workout
  	has_many :lifts
  	accepts_nested_attributes_for :lifts, allow_destroy: true
end
