class ScheduleWizardController < ApplicationController
  include Wicked::Wizard
  steps :edit, :confirm
  before_action :authenticate_user!

  def show
    @schedule = Schedule.find(params[:schedule_wizard_id])
    session[:schedule_wizard] = {params[:schedule_wizard_id] => @schedule}
    render_wizard
  end

  def update
    case step
    when :edit
      @schedule = session[:schedule_wizard][params[:schedule_wizard_id]]
      @schedule.assign_attributes(schedule_params)
      render_step next_step

    when :confirm
      @schedule = session[:schedule_wizard][params[:schedule_wizard_id]]
      @schedule.save!
      flash[:notice] = "更新が完了しました。"
      redirect_to schedules_path
    end
  end

  private
  def schedule_params
    params.require(:schedule).permit(:scheduled_on, :description, :lock_version, {user_ids: []})
  end
end
