class ArtistsController < ApplicationController

    def create
        Artist.create(post_params)

        redirect_to show 
    end

    def update
        Artist.find(params[:id]).update(post_params)

        redirect_to show 
    end

    def show
        @artist = Artist.find(Artist.last.id)
    end

    def new
        @new_artist = Artist.new 
    end

    def edit
        @edit_artist = Artist.find(params[:id])
    end

    private

    def post_params
        params.require(:artist).permit(:name, :bio)
    end
end
