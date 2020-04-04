class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :mobile
      t.date :date_of_birth

      t.timestamps
    end
  end
end
