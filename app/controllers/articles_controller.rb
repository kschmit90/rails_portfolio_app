class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    
    if @article.save
      redirect_to articles_index_path
    else
      render 'new'
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    
    if @article.update_attributes(params[:article])
      redirect_to articles_index_path
    else
      render 'edit'
    end
  end
  
  def like
    @article = Article.find(params[:id])
    @like = Like.create('liked' => true, 'ip_address' => request.remote_ip, 'article_id' => params[:id])
    (session[:session_article_id_array] ||= []) << params[:id]
    render 'show'
  end
end
