class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :company
      t.integer :pointsValue
      t.integer :pointsRedeemValue
      
    end
  end
end
