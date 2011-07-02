class CreatePays < ActiveRecord::Migration
  def self.up
    create_table :pays do |t|
      t.references :account
      t.references :favored
      t.float :value
      t.date :maturity

      t.timestamps
    end
  end

  def self.down
    drop_table :pays
  end
end
