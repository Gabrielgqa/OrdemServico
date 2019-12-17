class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :min_stock
      t.decimal :cost_price
      t.decimal :purchase_price

      t.timestamps
    end
  end
end
