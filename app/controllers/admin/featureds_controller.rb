# frozen_string_literal: true

module Admin
  class FeaturedsController < ApplicationController
    def new
      @featured = Featured.new(kind: params[:kind])
    end

    def create
      @featured = Featured.new(new_params)
      render_in_turbo_stream @featured.save, 'Thành công'
    end

    def edit
      @featured = Featured.find(params[:id])
    end

    def update
      @featured = Featured.find(params[:id])
      render_in_turbo_stream @featured.update(edit_params), 'Thành công'
    end

    def destroy
      @featured = Featured.find(params[:id])
      render_in_turbo_stream @featured.destroy, 'Thành công'
    end

    protected

    def new_params
      params.require(:featured).permit(:kind, :position, :article_id).to_hash
    end

    def edit_params
      params.require(:featured).permit(:position, :article_id).to_hash
    end
  end
end
