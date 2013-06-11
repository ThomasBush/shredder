class RemoveWeightFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :weight, :integer
  end
end
