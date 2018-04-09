class SongsController < ApplicationController

  def new
    @song = Song.find(params[:id])
  end 


  def show
    @song = Song.find(params[:id])
  end
end
