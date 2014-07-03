class AlbumsController < ApplicationController

  def new
  @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to '/albums'
    else
      render :new
    end
  end

  def index
    @albums = Album.all
  end

  private
  def album_params
    params.require(:album).permit(:artist, :title)
  end
end