require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :published_at => Date.today,
      :category_name => "value for category",
      :rating => 1,
      :completeness => 1,
      :text => "value for text"
    }
  end

  it "should create a new instance given valid attributes" do
    Article.create!(@valid_attributes)
  end
end
