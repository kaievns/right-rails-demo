require 'spec_helper'

describe "/pictures/new.html.erb" do
  include PicturesHelper

  before(:each) do
    assigns[:picture] = stub_model(Picture,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new picture form" do
    render

    response.should have_tag("form[action=?][method=post]", pictures_path) do
      with_tag("input#picture_name[name=?]", "picture[name]")
    end
  end
end
