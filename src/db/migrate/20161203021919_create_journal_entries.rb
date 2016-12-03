class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|

      t.string :title
      t.string :text
      t.datetime :dateEntry
      t.timestamps null: false
    end

    add_foreign_key :journal_entries, :characters
    add_foreign_key :journal_entries, :campaigns
  end
end
