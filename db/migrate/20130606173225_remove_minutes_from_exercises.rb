class RemoveMinutesFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :minutes, :integer
  end
end
