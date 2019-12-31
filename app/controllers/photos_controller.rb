class PhotosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

    def index 
        photos = Photo.all
        render json: photos
    end 

    def show 
        photo = Photo.find(params[:id])
        render json: photo
    end 

    def create 
        photo = Photo.create(
            title: params[:title],
            image_url: params[:image_url],
            date_taken: params[:date_taken],
            album_id: params[:album_id]
        )
        render json: photo
    end 

    def update 
        photo = Photo.find(params[:id])
        photo.update(
            title: params[:title],
            image_url: params[:image_url],
            date_taken: params[:date_taken],
            album_id: params[:album_id]
        )
        render json: photo
    end 

    def destroy 
        photo = Photo.find(params[:id])
        photo.destroy
        render json: {status: 204, message: "#{photo.title} has been destroyed."}
    end 

    private 
    def handle_record_not_found
        render json: {error: "This photo could not be found."}, status: :not_found
    end 
end
