class ArtistsController < ApplicationController

  def index
    @artists = Artist.All
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save

    flash.notice = "Artist '#{@artist.title}' added!"

    redirect_to mix_path(@mix)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    flash.notice = "Artist '#{@artist.title}' deleted!"

    redirect_to mix_path(@mix)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    flash.notice = "Artist '#{@song.title}' updated!"

    redirect_to mix_path(@mix)
  end

  private

  def artist_params
    params.require(:artist).permit(:title, :image)
  end

end
