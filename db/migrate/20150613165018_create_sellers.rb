class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.integer :seller_id
      t.string :name
      t.string :prefecture
      t.integer :tel

      t.timestamps null: false
    end
  end
end
