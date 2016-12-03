class CreateCampaignCharacters < ActiveRecord::Migration
  def change
    create_table :campaign_characters do |t|

      t.boolean :statusChar
      t.timestamps null: false
    end

    add_foreign_key :campaign_characters, :characters
    add_foreign_key :campaign_characters, :campaigns
  end
end
