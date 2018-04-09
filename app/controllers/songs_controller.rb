class SongsController < ApplicationController

  def new
    @song = Song.find(params[:id])
  end 

  def create 
    @artist = Artist.find_by(name: params[:artist])
    @genre = Genre.find_by(name: params[:genre])
    @song = Song.new(post_params(:name, @artist.id, @genre.id))
    @song.save 
    redirect_to song_path(@song)
  end 


  def show
    @song = Song.find(params[:id])
  end
end
