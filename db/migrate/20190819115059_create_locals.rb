class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :title, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :restaurant
      t.string :supermarket
      t.string :department
      t.string :tourist_spot
      t.string :station
      t.string :interchange
      t.text :description, null: false
      t.timestamps
    end
  end
end