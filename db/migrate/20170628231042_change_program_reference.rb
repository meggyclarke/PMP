class ChangeProgramReference < ActiveRecord::Migration[5.1]
  def change
    remove_reference :points, :program_id
    add_reference :points, :program
  end
end
