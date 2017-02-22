class AddCoordinatesToGadgets < ActiveRecord::Migration[5.0]
  def change
    add_column :gadgets, :latitude, :float
    add_column :gadgets, :longitude, :float
  end
end
