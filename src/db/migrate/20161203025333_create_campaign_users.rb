class CreateCampaignUsers < ActiveRecord::Migration
  def change
    create_table :campaign_users do |t|

      t.int :role
      t.boolean :isApprouved
      t.timestamps null: false
    end

    add_foreign_key :campaign_users, :campaigns
    add_foreign_key :campaign_users, :users
  end
end
