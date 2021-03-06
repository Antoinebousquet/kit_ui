class EventsController < ApplicationController
  include EventsHelper

  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_host, only: [:new, :edit]
  before_action :authenticate_user!, except: [:index]
  before_action :has_access?, only: [:edit, :update, :destroy]

  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      flash.now[:danger] = 'Event could not be created - please check your input.'
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      flash.now[:danger] = 'Event could not be updated - please check your input.'
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :start_date, :duration, :description, :price, :location, :host_id)
    end

    # host sometimes useful to set before action
    def set_host
      @host = current_user
    end

    def has_access?
      unless is_host?
        flash[:danger] = 'This is not your event. You cannot do that. You little sh*t.'
          redirect_back(fallback_location: events_path)
      end
    end
end
