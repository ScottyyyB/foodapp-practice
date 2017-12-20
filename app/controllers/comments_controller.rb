class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.save ? comment_created : (render "articles/show")
  end

  private

  def comment_params
    params[:comment].permit(:body)
  end

  def comment_created
    flash[:notice] = 'Comment has been successfully created.'
    redirect_to article_path(@article)
  end
end
