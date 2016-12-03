class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|

    	t.string :name
      	t.timestamps null: false
    end
  end
end
