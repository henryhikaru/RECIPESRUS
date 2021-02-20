class CreateAddedIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :added_ingredients do |t|
      t.string :amount
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
