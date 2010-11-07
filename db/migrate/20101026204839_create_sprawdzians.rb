class CreateSprawdzians < ActiveRecord::Migration
  def self.up
    create_table :sprawdzians do |t|
      t.string :nazwa
      t.string :dzial
      t.string :klasa

      t.timestamps
    end
  end

  def self.down
    drop_table :sprawdzians
  end
end
