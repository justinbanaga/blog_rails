# frozen_string_literal: true

# We create a new comment for an article.
#
# Args:
#   self: The current instance of the CommentsController class.
#   article_id: The id of the article the comment belongs to.
#   comment_params: This is a method we wrote to collect the params we need. It's the same as using params[:comment]
# Returns:
#   The article_id and the comment.
class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
