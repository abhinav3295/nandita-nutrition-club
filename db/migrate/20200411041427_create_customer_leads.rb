class CreateCustomerLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_leads do |t|
      t.string :name
      t.string :phone
      t.boolean :complimentary_shake
      t.float :height_cm
      t.float :weight_kg

      t.timestamps
    end
  end
end
