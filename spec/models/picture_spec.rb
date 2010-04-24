require 'spec_helper'

describe Picture do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :image => File.open("#{Rails.root}/public/images/spinner.gif")
    }
  end

  it "should create a new instance given valid attributes" do
    Picture.create!(@valid_attributes)
  end
end
