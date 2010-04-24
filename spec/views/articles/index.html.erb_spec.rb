require 'spec_helper'

describe "/articles/index.html.erb" do
  include ArticlesHelper

  before(:each) do
    assigns[:articles] = [
      stub_model(Article,
        :name => "value for name",
        :category => stub_model(Category, :name => "value for category"),
        :rating => 1,
        :completeness => 1,
        :text => "value for text"
      ),
      stub_model(Article,
        :name => "value for name",
        :category => stub_model(Category, :name => "value for category"),
        :rating => 1,
        :completeness => 1,
        :text => "value for text"
      )
    ]
  end

  it "renders a list of articles" do
    render
  end
end
