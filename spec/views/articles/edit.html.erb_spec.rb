require 'spec_helper'

describe "/articles/edit.html.erb" do
  include ArticlesHelper

  before(:each) do
    assigns[:article] = @article = stub_model(Article,
      :new_record? => false,
      :name => "value for name",
      :category_name => "value for category",
      :rating => 1,
      :completeness => 1,
      :text => "value for text"
    )
  end

  it "renders the edit article form" do
    render

    response.should have_tag("form[action=#{article_path(@article)}][method=post]") do
      with_tag('input#article_name[name=?]', "article[name]")
      with_tag('input#article_category_name[name=?]', "article[category_name]")
      with_tag('input#article_rating[name=?]', "article[rating]")
      with_tag('input#article_completeness[name=?]', "article[completeness]")
      with_tag('textarea#article_text[name=?]', "article[text]")
    end
  end
end
