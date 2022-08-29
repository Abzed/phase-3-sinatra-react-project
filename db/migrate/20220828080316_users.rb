class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :user_type
      t.string :avatar
    end
    
    
  end
end
