class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
   # @city = City.find(params[:city_id])
    # @meeting.countries.build
    # @meeting.timezones.build
  end

  def create
    #@city = City.find(params[:meeting][:city_ids].second)
    @meeting = Meeting.new(meeting_params)
    raise
    #@meeting.city_id = @city.id
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
    params.require(:meeting).permit(:meeting_date, :start_time, :end_time, :city_id)
  end

end
