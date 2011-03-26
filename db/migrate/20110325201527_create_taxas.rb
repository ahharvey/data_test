class CreateTaxas < ActiveRecord::Migration
  def self.up
    create_table :taxas do |t|
      t.string :latin
      t.string :common

      t.timestamps
    end
  end

  def self.down
    drop_table :taxas
  end
end
