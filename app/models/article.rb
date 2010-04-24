class Article < ActiveRecord::Base
  belongs_to :category
  
  validates_presence_of     :category_name, :name, :text, :published_at
  validates_numericality_of :rating, :in => 1..5
  validates_numericality_of :completeness, :in => 0..100
  
  def category_name
    category.name if category
  end
  
  def category_name=(name)
    self.category = name.blank? ? nil : Category.find_or_create_by_name(name)
  end
end
