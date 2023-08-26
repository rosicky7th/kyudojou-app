class CreateDojoEditors < ActiveRecord::Migration[7.0]
  def change
    create_table :dojo_editors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dojo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
