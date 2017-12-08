class StoreBikesController < ApplicationController
  before_action :set_store_bike, only: [:show, :edit, :update, :destroy]

  # GET /store_bikes
  # GET /store_bikes.json
  def index
    @store_bikes = StoreBike.all
  end

  # GET /store_bikes/1
  # GET /store_bikes/1.json
  def show
  end

  # GET /store_bikes/new
  def new
    @store_bike = StoreBike.new
  end

  # GET /store_bikes/1/edit
  def edit
  end

  # POST /store_bikes
  # POST /store_bikes.json
  def create
    @store_bike = StoreBike.create(store_bike_params)

    respond_to do |format|
      if @store_bike.save
      #  store_bike = @store_bike.name
        format.html { redirect_to @store_bike, notice: 'Store bike was successfully created.' }
        format.json { render action: 'show', status: :created, location: @store_bike }
      else
        format.html { render action: 'new' }
        format.json { render json: @store_bike.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /store_bikes/1
  # PATCH/PUT /store_bikes/1.json
  def update
    respond_to do |format|
      if @store_bike.update(store_bike_params)
        format.html { redirect_to @store_bike, notice: 'Store bike was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @store_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_bikes/1
  # DELETE /store_bikes/1.json
  def destroy
    @store_bike.destroy
    respond_to do |format|
      format.html { redirect_to store_bikes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_bike
      @store_bike = StoreBike.find(params[:id])
    end
    
    def store_bike_params  
     params.require(:store_bike).permit(:name, :delete)  
    end  

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_bike_params
      params.require(:store_bike).permit(:store_id, :bike_id)
      #params.permit(:bike_id, :store_id)
    end
end
