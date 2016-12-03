class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.timestamps null: false
      t.string   :name
      t.string   :alignement
    end

    add_foreign_key :characters, :users
    add_foreign_key :characters, :fonts
  end
end
