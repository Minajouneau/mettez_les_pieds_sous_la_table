class SchedulesController < ApplicationController
  def update
    @schedule = Schedule.find(params[:id])
    authorize @schedule
    @schedule.update(schedule_params)
  end

  private

  def schedule_params
    params.require(:schedule).permit(:opening_hour, :closing_hour, :closed)
  end
end
