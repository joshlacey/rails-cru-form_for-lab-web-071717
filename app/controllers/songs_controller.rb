class SongsController < ApplicationController

    def index
      @songs = Song.all
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.new(params_all)
      @song.save
      redirect_to @song
    end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.find(params[:id])
      @song.update(params_all)
      redirect_to song_path(@song)
    end

    def show
      @song = Song.find(params[:id])
    end

  private

    def params_all
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
