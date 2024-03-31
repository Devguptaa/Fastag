class CreateFastags < ActiveRecord::Migration[7.1]
  def change
    create_table :fastags do |t|
      t.string :accountnumber
      t.string :vehiclenumber
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
