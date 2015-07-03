class ShitsManquantAuxPlayers < ActiveRecord::Migration
  def change
    reversible do |r|
      r.up do
        execute 'ALTER TABLE players ADD COLUMN first_name CHAR(30);'
        execute 'ALTER TABLE players ADD COLUMN last_name CHAR(30);'
      end
      r.down do
        execute 'ALTER TABLE players DROP COLUMN first_name;'
        execute 'ALTER TABLE players DROP COLUMN last_name;'
      end
    end
  end
end
