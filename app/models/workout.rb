class Workout < ActiveRecord::Base

attr_accessible :name, :exercises_attributes
has_many :exercises 
accepts_nested_attributes_for :exercises, allow_destroy: true

end
