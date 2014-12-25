class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save

    flash.notice = "Song '#{@song.title}' added!"

    redirect_to mix_path(@mix)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    flash.notice = "Song '#{@song.title}' deleted!"

    redirect_to mix_path(@mix)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    flash.notice = "Song '#{@song.title}' updated!"

    redirect_to mix_path(@mix)
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist)
  end


end
