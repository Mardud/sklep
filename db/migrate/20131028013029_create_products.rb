class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :price
      t.references :category, index: true

      t.timestamps
    end
    add_column :products, :cat_id, :integer
  end
end
