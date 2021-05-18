class GenresController < ApplicationController

    def create
        Genre.create(post_params)

        redirect_to show 
    end

    def update
        Genre.find(params[:id]).update(post_params)

        redirect_to show 
    end

    def show
        @genre = Genre.find(Genre.last.id)
    end

    def new
        @new_genre = Genre.new 
    end

    def edit
        @edit_genre = Genre.find(params[:id])
    end

    private

    def post_params
        params.require(:genre).permit(:name)
    end
end
