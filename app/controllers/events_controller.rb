class EventsController < ApplicationController
    def index
        @event = Event.all
    end
    def new
        @event = Event.new
    end
    def create
        @event = Event.new(params_e)
        if @event.save
            redirect_to events_path
        else
            redirect_to new_events_path
        end
    end
    def edit
        @event = Event.find(params[:id])
    end
    def update
        @event = Event.find(params[:id])
        if @event.update_attributes(params_e)
            redirect_to events_path
        else
            redirect_to edit_events_path
        end
    end
    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path
    end
    private
        def params_e
            params.require(:event).permit(:name, :description, :time)
        end
end
