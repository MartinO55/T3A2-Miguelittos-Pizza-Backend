class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.json :pizza
      t.json :side
      t.json :drink
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
