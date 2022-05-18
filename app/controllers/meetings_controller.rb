class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
    @city = City.find(params[:city_id])
    # @meeting.countries.build
    # @meeting.timezones.build
  end

  def create
    @meeting = Meeting.new(meeting_params)
    # raise
    if @meeting.save
      redirect_to meeting_path(@meeting)
    else
      render :new
    end
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  private

  def meeting_params
    params.require(:meeting).permit(:meeting_date, :start_time, :end_time, cities_attributes: :name)
  end

end
