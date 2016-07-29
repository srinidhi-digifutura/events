class EventsController < ApplicationController

	def index
        @events = Event.all
	end

	def new
        @event = Event.new
	end

    def show
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to events_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def event_params
        params.require(:event).permit(:title,:description,:event_date,:venue,:address,:state,:city)
    end
end
