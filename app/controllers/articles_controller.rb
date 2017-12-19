class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params())
    @article.save ? article_created() : (render :new)
  end

  private

  def article_params
    params[:article].permit(:title, :content)
  end

  def article_created
    flash[:notice] = "Article has been successfully created."
    redirect_to article_path(@article)
  end
end
