class AlbumsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

    def index 
        albums = Album.all
        render json: albums
    end 

    def show 
        album = Album.find(params[:id])
        render json: album
    end 

    def create 
        album = Album.create(
            name: params[:name]
        )
        render json: album
    end 

    def update 
        album = Album.find(params[:id])
        album.update(
            name: params[:name]
        )
        render json: album
    end 

    def destroy
        album = Album.find(params[:id])
        album.destroy
        render json: {status: 204, message: "#{album.name} has been destroyed."}
    end 

    private 
    def handle_record_not_found
        render json: {error: "This album could not be found."}, status: :not_found
    end 
end
