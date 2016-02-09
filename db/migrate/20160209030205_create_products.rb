class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :price
      t.string :image
      t.text :description
      t.string :name

      t.timestamps null: false
    end
  end
end
