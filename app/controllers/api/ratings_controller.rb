class API::RatingsController < ApplicationController
	before_action :set_car
	before_action :set_car_rating, only: [:edit, :show, :update, :destroy]

	def index
			@ratings = Car.where(id: @car.id).select('cars.id, cars.make, cars.model, cars.year, ratings.safety, ratings.performance, ratings.technology, ratings.interior, ratings.reliability, ratings.overall').joins(:ratings)
			render json: @ratings
	end	

  def show
  	if stale?(last_modified: @rating.updated_at, public: true)
    	render json: @rating
  	end
  end

  def new
    @rating = @car.ratings.new
  end

  def edit
  end	

  def create
    @rating = @car.ratings.new(rating_params)
    if @rating.save
    	render json: @rating
    else	
    	render json: @rating.errors, status: :unprocessable_entity
    end
  end  	 

  def update
    if @rating.update(rating_params)
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
