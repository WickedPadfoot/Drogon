class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.timestamps null: false
      t.string   :name
    end

    add_foreign_key :characters, :users
  end
end
