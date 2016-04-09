class CreateMotocycles < ActiveRecord::Migration[5.0]
  def change
    create_table :motocycles do |t|
      t.string :Brand
      t.string :Model
      t.string :Year
      t.string :Capacity
      t.string :Horsepower

      t.timestamps
    end
  end
end
