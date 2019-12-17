class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.references :city, null: false, foreign_key: true
      t.string :phone
      t.string :email
      t.string :description
      t.char :type

      t.timestamps
    end
  end
end
