require 'spec_helper'

describe "/pictures/edit.html.erb" do
  include PicturesHelper

  before(:each) do
    assigns[:picture] = @picture = stub_model(Picture,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit picture form" do
    render

    response.should have_tag("form[action=#{picture_path(@picture)}][method=post]") do
      with_tag('input#picture_name[name=?]', "picture[name]")
    end
  end
end
