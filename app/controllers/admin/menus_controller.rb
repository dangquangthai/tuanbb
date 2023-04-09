# frozen_string_literal: true

module Admin
  class MenusController < ApplicationController
    def new
      @menu = Menu.new(kind: params[:kind])
    end

    def create
      @menu = Menu.new(new_params)
      render_in_turbo_stream @menu.save, 'Thành công'
    end

    def edit
      @menu = Menu.find(params[:id])
    end

    def update
      @menu = Menu.find(params[:id])
      render_in_turbo_stream @menu.update(edit_params), 'Thành công'
    end

    def destroy
      @menu = Menu.find(params[:id])
      render_in_turbo_stream @menu.destroy, 'Thành công'
    end

    protected

    def new_params
      params.require(:menu).permit(:kind, :title, :position, :article_id).to_hash
    end

    def edit_params
      params.require(:menu).permit(:title, :position, :article_id).to_hash
    end
  end
end
