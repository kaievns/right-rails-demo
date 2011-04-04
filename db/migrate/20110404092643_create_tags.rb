class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags do |t|
      t.string :name
    end

    add_index :tags, :name, :uniq => true

    create_table :articles_tags, :id => false do |t|
      t.integer :article_id
      t.integer :tag_id
    end

    add_index :articles_tags, :article_id
    add_index :articles_tags, :tag_id
  end

  def self.down
    drop_table :tags
    drop_table :articles_tags
  end
end