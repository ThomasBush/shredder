class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :set
      t.integer :rep
      t.integer :weight
      t.integer :minutes

      t.timestamps
    end
  end
end
