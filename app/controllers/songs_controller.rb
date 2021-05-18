class SongsController < ApplicationController

    def index
        @all = Song.all 
    end

    def create
        Song.create(post_params)

        redirect_to show 
    end

    def update
        Song.find(params[:id]).update(post_params)

        redirect_to show 
    end

    def show
       
        @song = Song.find(Song.last.id)
    end

    def new
        @new_song = Song.new 
    end

    def edit 
        @edit_song = Song.find(params[:id])
    end

    private

    def post_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
