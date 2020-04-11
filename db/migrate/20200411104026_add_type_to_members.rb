class AddTypeToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :membership_type, :string
  end
end
