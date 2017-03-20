class API::RatingsController < ApplicationController

	before_action :set_car
	before_action :set_car_rating, only: [:edit, :show, :update, :destroy]

	def index
		@ratings = @car.ratings
		render json: @ratings, include: ['car']
	end	

  def show
  	if stale?(last_modified: @rating.updated_at, public: true)
    	render json: @rating
  	end
  end

  def create
    @rating = @car.ratings.new(rating_params)
    if @rating.save
      # @rating.overall_score
    	render json: @rating
    else	
    	render json: @rating.errors, status: :unprocessable_entity
    end
  end  	 

  def update
    if @rating.update(rating_params)
      # @rating.overall_score
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @rating.destroy
    head :no_content 
  end  

	private
    def rating_params
      params.require(:rating).permit(:reviewedBy, :safety, :performance, :technology, :interior, :reliability, :overall, :car_id)
    end	    

    def set_car
    	@car = Car.find(params[:car_id])
    end		

    def set_car_rating
    	@rating = @car.ratings.find(params[:id])
    end	

end
