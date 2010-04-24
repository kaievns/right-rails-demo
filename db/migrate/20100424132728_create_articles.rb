class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string  :name
      t.date    :published_at
      t.integer :category_id
      t.integer :rating,       :default => 0
      t.integer :completeness, :default => 0
      t.text    :text

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
