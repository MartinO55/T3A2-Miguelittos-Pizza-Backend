class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.json :pizza
      t.json :side
      t.json :drink
      t.boolean :complete, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
