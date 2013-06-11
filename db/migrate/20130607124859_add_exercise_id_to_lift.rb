class AddExerciseIdToLift < ActiveRecord::Migration
  def change
    add_column :lifts, :exercise_id, :integer
  end
end
