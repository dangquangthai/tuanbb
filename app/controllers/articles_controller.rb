# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @article = Article.find_by(slug: params[:slug])
  end
end
