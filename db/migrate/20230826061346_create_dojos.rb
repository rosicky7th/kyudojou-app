class CreateDojos < ActiveRecord::Migration[7.0]
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :prefecture
      t.string :municipalities
      t.string :address
      t.string :phone_number
      t.string :introduction
      t.text :rule

      t.timestamps
    end
  end
end
