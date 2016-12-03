class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|

      t.string :name
      t.string :description
      t.boolean :status
      t.timestamps null: false
    end
  end
end
