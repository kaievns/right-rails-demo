require 'spec_helper'

describe "/pictures/index.html.erb" do
  include PicturesHelper

  before(:each) do
    assigns[:pictures] = [
      stub_model(Picture,
        :name => "value for name"
      ),
      stub_model(Picture,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of pictures" do
    render
  end
end
