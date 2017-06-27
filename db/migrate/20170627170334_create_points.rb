class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :company
      t.integer :pointsNum
      t.integer :pointsValue
      t.integer :pointsUntilValue
      #future feature pointsIncrementValueJumps
      

      t.timestamps
    end
  end
end
