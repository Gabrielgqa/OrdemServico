class CreateLegalPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :legal_people do |t|
      t.string :corporate_name
      t.string :cnpj
      t.string :contact
      t.string :state_registration
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
