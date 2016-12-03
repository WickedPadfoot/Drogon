class CreateCampaignUsers < ActiveRecord::Migration
  def change
    create_table :campaign_users do |t|

      t.timestamps null: false
    end
  end
end
