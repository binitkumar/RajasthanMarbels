class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_type
      t.string :customer_name
      t.text :customer_address
      t.string :customer_contact_no
      t.string :product
      t.string :model_no
      t.string :order_status
      t.decimal :advance_amount
      t.string :midiator_name

      t.timestamps
    end
  end
end
