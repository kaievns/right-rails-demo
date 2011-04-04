class Article < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many   :tags, :uniq => true

  validates_presence_of     :category_name, :name, :text, :published_at
  validates_numericality_of :rating, :in => 1..5
  validates_numericality_of :completeness, :in => 0..100
  validates_format_of       :marker_color, :with => /^#[0-9a-f]{6}$/i, :message => 'should be a HEX value'

  def category_name
    category.name if category
  end

  def category_name=(name)
    self.category = name.blank? ? nil : Category.find_or_create_by_name(name)
  end

  def tags_string
    tags.map(&:name).join(', ')
  end

  def tags_string=(string)
    self.tags = string.split(',').map do |tag|
      unless tag.blank?
        Tag.find_or_create_by_name(tag.strip)
      end
    end.compact
  end
end
