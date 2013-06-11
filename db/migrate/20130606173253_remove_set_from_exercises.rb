class RemoveSetFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :set, :integer
  end
end
