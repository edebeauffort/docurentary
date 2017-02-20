class CreateGadget < ActiveRecord::Migration[5.0]
  def change
    create_table :gadgets do |t|
      t.string :category
      t.string :brand
      t.string :model
      t.integer :price
      t.text :description
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
