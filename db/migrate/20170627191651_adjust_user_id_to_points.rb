class AdjustUserIdToPoints < ActiveRecord::Migration[5.1]
  def change
    remove_reference :points, :users
    add_reference :points, :user
  end
end
