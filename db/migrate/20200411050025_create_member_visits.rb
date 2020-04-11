class CreateMemberVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :member_visits do |t|
      t.integer :member_id
      t.date :date_of_visit
      t.boolean :shake_provided

      t.timestamps
    end
  end
end
