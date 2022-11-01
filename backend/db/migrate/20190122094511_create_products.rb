class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 15, scale: 2
      t.text :describe
      t.string :photo_type
      t.mediumblob :photo

      t.timestamps
    end
  end
end
