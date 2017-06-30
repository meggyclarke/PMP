class AddUserIdToPoints < ActiveRecord::Migration[5.1]
  def change
    add_reference :points, :users
  end
end
