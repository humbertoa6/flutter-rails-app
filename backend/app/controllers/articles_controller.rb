class ArticlesController < ApplicationController
  before_action :create_new_articles

  def index
    articles = Filter.new(Article, query: params[:query], sorty_by: params[:sort_by], from: params[:from]).call

    render json: articles
  end

  private

  def create_new_articles
    CreateNewArticles.new(params[:query], params[:sort_by], params[:from]).call
  end
end
