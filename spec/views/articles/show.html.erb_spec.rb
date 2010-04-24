require 'spec_helper'

describe "/articles/show.html.erb" do
  include ArticlesHelper
  before(:each) do
    assigns[:article] = @article = stub_model(Article,
      :name => "value for name",
      :category_name => "value for category",
      :rate => 1,
      :completeness => 1,
      :text => "value for text"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ category/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ text/)
  end
end
