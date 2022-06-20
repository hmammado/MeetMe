class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
    @cities = City.all
    # @city = City.find(params[:city_id])
    # @meeting.countries.build
    # @meeting.timezones.build
  end

  def create

    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to meeting_path(@meeting)
    else
      render :new
    end

  end

  def show
    @meeting = Meeting.find(params[:id])
    # @city = City.find(@meeting.city_id)
    @host_city = @meeting.host_city
    raise
    @city_host = City.find_by(name: @host_city)

    @city_one = @meeting.city_one
    @city_first = City.find_by(name: @city_one)

    @city_two = @meeting.city_two
    @city_second = City.find_by(name: @city_two)

    @city_three = @meeting.city_three
    @city_third = City.find_by(name: @city_three)
  end

  private

  def meeting_params
    params.require(:meeting).permit(:meeting_date, :start_time, :end_time, city_ids: [])
  end

end
