class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.references :added_ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
