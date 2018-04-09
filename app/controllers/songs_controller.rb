class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    # @artist = Artist.find_by(name: params[:artist])
    # @genre = Genre.find_by(name: params[:genre])
    @song = Song.new(post_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end


  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    #  @artist = Artist.find_by(name: params[:artist_id])
    #  @genre = Genre.find_by(name: params[:genre_id])
    @song = Song.find(params[:id])
    @song.update(post_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def post_params(*args)
    params.require(:song).permit(*args)
  end
end
