# frozen_string_literal: true

module Admin
  class ArticlesController < BaseController
    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      render_in_turbo_stream @article.update(new_article_params), 'Đã cập nhật thành công'
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(new_article_params)
      render_in_turbo_stream @article.save, 'Đã tạo mới thành công'
    end

    protected

    def new_article_params
      return article_params if article_params[:slug].present?

      article_params.merge!(slug: article_params['title'].to_slug)
    end

    def article_params
      params.require(:article).permit(:slug, :position, :title, :price, :standfirst, :content).to_hash
    end
  end
end
