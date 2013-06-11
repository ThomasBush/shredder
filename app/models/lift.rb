class Lift < ActiveRecord::Base

	attr_accessible :reps, :weight, :exercise_id
  	belongs_to :exercise
end
