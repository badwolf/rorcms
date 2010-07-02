class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.text :content
      t.integer :user_id
      t.string :visitor_name
      t.string :visted_ip
      t.integer :vote_for
      t.integer :vote_against
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
