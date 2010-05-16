class AddMarkerColorToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :marker_color, :string
  end

  def self.down
    remove_column :articles, :marker_color
  end
end
