require 'spec_helper'

describe "/categories/index.html.erb" do
  include CategoriesHelper

  before(:each) do
    assigns[:categories] = [
      stub_model(Category,
        :name => "value for name"
      ),
      stub_model(Category,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of categories" do
    render
  end
end
