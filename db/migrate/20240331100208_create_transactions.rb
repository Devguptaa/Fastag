class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :location
      t.references :fastag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
