class EventsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_event,only: [:show,:edit,:update,:destroy]

	def index
        @events = Event.all
	end

	def new
        @event = current_user.events.build
	end

    def show
    end

    def create
        @event = current_user.events.build(event_params)
        if @event.save
            redirect_to events_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        @event.update(event_params)
        @event.save
        redirect_to events_path
    end

    def destroy
        @event.destroy
        redirect_to events_path
    end

    private

    def event_params
        params.require(:event).permit(:title,:description,:event_date,:venue,:address,:state,:city)
    end

    def find_event
        @event = Event.find(params[:id])
    end
end
