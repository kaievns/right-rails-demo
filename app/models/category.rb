class Category < ActiveRecord::Base
  has_many :articles, :dependent => :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
