class AddCoachIdToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :coach_id, :integer
  end
end
