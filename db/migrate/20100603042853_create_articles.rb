class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.integer :categorie_id
      t.integer :channel_id
      t.string :title
      t.string :sub_title
      t.text :short_content
      t.text :content
      t.string :source
      t.string :source_link
      t.boolean :if_link
      t.integer :author_id
      t.integer :state_id
      t.integer :hits
      t.integer :priority
      t.integer :prime
      t.integer :sticky
      t.integer :comments_count

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
