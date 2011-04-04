class Tag < ActiveRecord::Base
  has_and_belongs_to_many :articles, :uniq => true

  def self.names
    all.map(&:name)
  end
end