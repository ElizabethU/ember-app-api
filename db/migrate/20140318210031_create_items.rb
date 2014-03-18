class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product
      t.string :quantity
      t.string :order
      t.string :current_price

      t.timestamps
    end
  end
end
