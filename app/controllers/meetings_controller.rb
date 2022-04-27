class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
    @meeting.cities.build
    # @meeting.countries.build
    # @meeting.timezones.build
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @city = City.find_by name: 'Barcelona'
    #raise
    if @meeting.save
      redirect_to meeting_path(@meeting)
    else
      render :new
    end
  end

  def show
    @meeting = Meeting.find(params[:id])
    @cities = @meeting.cities
  end

  private

  def meeting_params
    params.require(:meeting).permit(:meeting_date, :meeting_time, cities_attributes: :name)
  end

end
