class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
