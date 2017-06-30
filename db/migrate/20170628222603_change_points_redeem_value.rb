class ChangePointsRedeemValue < ActiveRecord::Migration[5.1]
  def change
    remove_column :programs, :pointsRedeemValue, :integer
    add_column :programs, :pointsRedeemValue, :string
  end
end
