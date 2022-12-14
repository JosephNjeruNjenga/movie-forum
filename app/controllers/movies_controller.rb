class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_not_found

    def index 
        render json: Movie.all, status: :ok
    end

    def show 
        movie = Movie.find_by(id: params[:id])
        render json: movie.reviews
    end
    
    private 

    def record_not_found
        render json:{error:"Movie not found"}, status: :not_found
    end
end
