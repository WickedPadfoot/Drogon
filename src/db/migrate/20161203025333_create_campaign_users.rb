class CreateCampaignUsers < ActiveRecord::Migration
  def change
    create_table :campaign_users do |t|

      t.string :role
      t.boolean :isApprouved
      t.timestamps null: false
    end

    add_foreign_key :campaign_users, :campaigns
    add_foreign_key :campaign_users, :users

    add_index :campaign_users, :role,   unique: false
  end
end
