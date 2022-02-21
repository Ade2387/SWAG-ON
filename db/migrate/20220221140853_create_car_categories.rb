class CreateCarCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :car_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
