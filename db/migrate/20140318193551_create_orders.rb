class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :email
      t.string :status
      t.string :ccnumber
      t.string :ccv
      t.string :expdate
      t.string :zipcode

      t.timestamps
    end
  end
end
