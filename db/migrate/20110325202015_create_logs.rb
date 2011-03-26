class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.integer :taxa_id
      t.integer :site_id
      t.date :date
      t.integer :weight
      t.integer :length
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
