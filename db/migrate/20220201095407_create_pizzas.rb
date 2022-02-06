class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :description
      t.float :price
      t.json :recipe, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
