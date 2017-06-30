class RemoveValuesFromPoints < ActiveRecord::Migration[5.1]
  def change
    remove_column :points, :company, :string
    remove_column :points, :pointsValue, :integer
    remove_column :points, :pointsUntilValue, :integer

    add_reference :points, :program_id
  end
end
