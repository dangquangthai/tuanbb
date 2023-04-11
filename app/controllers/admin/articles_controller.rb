# frozen_string_literal: true

module Admin
  class ArticlesController < BaseController
    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      render_in_turbo_stream @article.update(edit_params), 'Thành công'
    end

    protected

    def edit_params
      params.require(:article).permit(:position, :title, :price, :standfirst, :content).to_hash
    end
  end
end
