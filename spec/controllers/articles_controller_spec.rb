require 'spec_helper'

describe ArticlesController do

  def mock_article(stubs={})
    @mock_article ||= mock_model(Article, stubs.merge(:name => 'boo', :text => 'boo', :published_at => Date.today, :category_name => 'boo', :rating => 1, :completeness => 1))
  end

  describe "GET index" do
    it "assigns all articles as @articles" do
      Article.stub(:find).with(:all).and_return([mock_article])
      get :index
      assigns[:articles].should == [mock_article]
    end
  end

  describe "GET show" do
    it "assigns the requested article as @article" do
      Article.stub(:find).with("37").and_return(mock_article)
      get :show, :id => "37"
      assigns[:article].should equal(mock_article)
    end
  end

  describe "GET new" do
    it "assigns a new article as @article" do
      Article.stub(:new).and_return(mock_article)
      get :new
      assigns[:article].should equal(mock_article)
    end
  end

  describe "GET edit" do
    it "assigns the requested article as @article" do
      Article.stub(:find).with("37").and_return(mock_article)
      get :edit, :id => "37"
      assigns[:article].should equal(mock_article)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created article as @article" do
        Article.stub(:new).with({'these' => 'params'}).and_return(mock_article(:save => true))
        post :create, :article => {:these => 'params'}
        assigns[:article].should equal(mock_article)
      end

      it "redirects to the created article" do
        Article.stub(:new).and_return(mock_article(:save => true))
        post :create, :article => {}
        response.should redirect_to(article_url(mock_article))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved article as @article" do
        Article.stub(:new).with({'these' => 'params'}).and_return(mock_article(:save => false))
        post :create, :article => {:these => 'params'}
        assigns[:article].should equal(mock_article)
      end

      it "re-renders the 'new' template" do
        Article.stub(:new).and_return(mock_article(:save => false))
        post :create, :article => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested article" do
        Article.should_receive(:find).with("37").and_return(mock_article)
        mock_article.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :article => {:these => 'params'}
      end

      it "assigns the requested article as @article" do
        Article.stub(:find).and_return(mock_article(:update_attributes => true))
        put :update, :id => "1"
        assigns[:article].should equal(mock_article)
      end

      it "redirects to the article" do
        Article.stub(:find).and_return(mock_article(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(article_url(mock_article))
      end
    end

    describe "with invalid params" do
      it "updates the requested article" do
        Article.should_receive(:find).with("37").and_return(mock_article)
        mock_article.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :article => {:these => 'params'}
      end

      it "assigns the article as @article" do
        Article.stub(:find).and_return(mock_article(:update_attributes => false))
        put :update, :id => "1"
        assigns[:article].should equal(mock_article)
      end

      it "re-renders the 'edit' template" do
        Article.stub(:find).and_return(mock_article(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested article" do
      Article.should_receive(:find).with("37").and_return(mock_article)
      mock_article.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the articles list" do
      Article.stub(:find).and_return(mock_article(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(articles_url)
    end
  end

end
