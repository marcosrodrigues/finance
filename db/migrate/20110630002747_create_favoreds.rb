class CreateFavoreds < ActiveRecord::Migration
  def self.up
    create_table :favoreds do |t|
      t.string :name
      t.string :email
      t.string :kind

      t.timestamps
    end
  end

  def self.down
    drop_table :favoreds
  end
end
