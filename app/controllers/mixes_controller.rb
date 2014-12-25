class MixesController < ApplicationController
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    @mixes = Mix.all
  end

  def new
    @mix = Mix.new
  end

  def create
    @mix = Mix.new(mix_params)
    @mix.save

    flash.notice = "Mix '#{@mix.title}' created!"

    redirect_to mix_path(@mix)
  end

  def destroy
    @mix = Mix.find(params[:id])
    @mix.destroy

    flash.notice = "Mix '#{@mix.title}' deleted!"

    redirect_to mix_path(@mix)
  end

  def edit
    @mix = Mix.find(params[:id])
  end

  def update
    @mix = Mix.find(params[:id])
    @mix.update(mix_params)

    flash.notice = "Mix '#{@mix.title}' updated!"

    redirect_to mix_path(@mix)
  end

  private

  def mix_params
    params.require(:mix).permit(:title, :description, :recipient)
  end

end
