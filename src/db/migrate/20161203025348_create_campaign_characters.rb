class CreateCampaignCharacters < ActiveRecord::Migration
  def change
    create_table :campaign_characters do |t|

      t.timestamps null: false
    end
  end
end
