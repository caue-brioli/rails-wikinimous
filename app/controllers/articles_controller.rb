class ArticlesController < ApplicationController
  before_action :set_articles, only: [:destroy, :show, :edit, :update]

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  def show
    # Encontra article
  end

  def edit
    # Encontra article
  end

  def update
    # Encontra article
    @article.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
    # Encontra article
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
