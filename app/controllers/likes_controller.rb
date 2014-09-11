class LikesController < ApplicationController
  def new
    @article = Article.find(params[:id])
    @article.likes.create({:ip_address => request.remote_ip})
    
    if session[:liked_article_ids]
      session[:liked_article_ids] << @article.id
    else
      session[:liked_article_ids] = [@article.id]
    end
    
    redirect_to article_show_path(@article.id)
  end
end
