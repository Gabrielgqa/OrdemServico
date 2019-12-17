class CreatePhysicalPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :physical_people do |t|
      t.string :gender
      t.string :cpf
      t.string :rg
      t.date :birth_date
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
