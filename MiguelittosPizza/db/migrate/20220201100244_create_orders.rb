class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :phone
      t.bool :complete
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
