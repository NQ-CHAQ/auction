class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :seller_id
      t.string :email
      t.string :image_url

      t.timestamps null: false
    end
  end
end
