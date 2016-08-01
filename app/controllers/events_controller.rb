class EventsController < ApplicationController
    before_action :authenticate_user!,except: [:index]
    before_action :find_event,only: [:show,:edit,:update,:destroy,:attend,:un_attend]

	def index
        @events = Event.all.order("created_at DESC")
	end

	def new
        @event = current_user.events.build
	end

    def show
    end

    def create
        @event = current_user.events.build(event_params)
        if @event.event_date >= Time.zone.now
            if @event.save
                redirect_to events_path
            else
                render 'new'
            end
        else
            flash[:alert] = "You have entered a past date. Please enter a Valid Date"
            redirect_to new_event_path
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

    def my_events
        @events = Event.where(user_id:current_user.id)
    end

    def attend
       @is_attending = false if @event.assemblies.blank?
       assembly = @event.assemblies.build(user_id:current_user.id)
       assembly.save
       flash[:notice] = "You are successfully attending this event"
       redirect_to @event
    end

    def un_attend
        assembly = @event.assemblies.find_by(user_id: current_user.id)
        assembly.destroy
        flash[:notice] = "You are NOT attending this event"
        redirect_to @event
    end

    def attend_events
        @attending_events = []
        Assembly.all.each do |assembly|
            if assembly.user_id == current_user.id
                event = Event.find_by(id:assembly.event_id)
                @attending_events << event
            end
        end
        @attending_events
    end

    private

    def event_params
        params.require(:event).permit(:title,:description,:event_date,:venue,:address,:state,:city,:ticket_fee)
    end

    def find_event
        @event = Event.find(params[:id])
    end
end
