class CreateChannels < ActiveRecord::Migration
  def self.up
    create_table :channels do |t|
      t.string :title
      t.text :intro
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :contents_count

      t.timestamps
    end
  end

  def self.down
    drop_table :channels
  end
end
