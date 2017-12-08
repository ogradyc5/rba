class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  #before_action :authenticate_user!
  before_action :find_store_bike

  def index
    @bookings = Booking.where("store_bike_id = ? AND end_time >= ?", @store_bike.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(id: @store_bike)   #(id: params.permit(:store_id, :bike_id))      #(store_bike_id: :bike_id, :scope => [:store_id] )    #(store_id: store.id, bike_id: bike.id )
   # @booking = Booking.new(store_bike_id: @store_bike)
   # @store_bike = StoreBike.find(params[:bike_id, :scope => [:store_id] ])
    #@booking = @store_bike.bookings.build
    #@store_bike = StoreBike.find(params[:store_bike_id])
    #@booking = @store_bike.bookings.new
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:store_bike_id, :start_time, :length))
    #@booking.store_bike = Booking.find_by_id(params[:id])
    @booking.id = @store_bike
    if @booking.save
      redirect_to store_bike_bookings_path(@store_bike, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to store_bike_bookings_path(@store_bike)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.store_bike = @store_bike
    
    if @booking.update(params[:booking].permit(:store_bike_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to store_bike_bookings_path(@store_bike)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to store_bike_booking_path(@store_bike, @booking)
      else
        render 'new'
      end
  end

  def find_store_bike
    if params[:store_bike_id]
      @store_bike = StoreBike.find_by_id(params[:store_bike_id])
    end
  end

end
