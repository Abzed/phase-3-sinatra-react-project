class Magazines < ActiveRecord::Migration[6.1]
  def change
    create_table :magazines do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :image
      t.datetime :created_at
      t.integer :user_id
    end    
  end
end
