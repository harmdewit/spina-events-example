module Spina
  module Admin
    class EventsController < AdminController

      before_action :set_breadcrumb
      before_action :set_event, only: [:edit, :update, :destroy]

      layout 'spina/admin/website'

      def index
        @events = Event.all
      end

      def show
      end

      def new
        @event = Event.new
      end

      def edit
      end

      def create
        @event = Event.new(event_params)

        if @event.save
          redirect_to admin_events_path, notice: 'Event was successfully created.'
        else
          render :new
        end
      end

      def update
        if @event.update(event_params)
          redirect_to admin_events_path, notice: 'Event was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @event.destroy
        respond_to do |format|
          redirect_to admin_events_path, notice: 'Event was successfully destroyed.'
        end
      end

      private

      def event_params
        params.require(:event).permit(:title, :description, :date)
      end

      def set_breadcrumb
        add_breadcrumb 'Events', admin_events_path
      end

      def set_event
        @event = Event.find(params[:id])
        add_breadcrumb @event.title
      end

    end
  end
end
