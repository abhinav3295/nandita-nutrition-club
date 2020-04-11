class AddDateOfJoiningToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :date_of_joining, :date
  end
end
