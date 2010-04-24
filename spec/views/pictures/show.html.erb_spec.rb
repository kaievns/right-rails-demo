require 'spec_helper'

describe "/pictures/show.html.erb" do
  include PicturesHelper
  before(:each) do
    assigns[:picture] = @picture = stub_model(Picture,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
