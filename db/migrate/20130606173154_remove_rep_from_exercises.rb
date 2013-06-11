class RemoveRepFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :rep, :integer
  end
end
