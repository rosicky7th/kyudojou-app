class CreateDojos < ActiveRecord::Migration[7.0]
  def change
    create_table :dojos do |t|
      t.string :name,           null: false
      t.string :prefecture,     null: false
      t.string :municipalities, null: false
      t.string :address,        null: false
      t.string :phone_number,   null: false
      t.string :introduction
      t.text :rule,             null: false

      t.timestamps
    end
  end
end
