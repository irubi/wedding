class Admin::SchedulesController < Admin::BaseController
  inherit_resources
  belongs_to :marriage
  before_filter :set_marrage
  protected
  def resource_params
    params.require(:schedule).permit(:date, :location, :desc)
  end
  
  def set_marrage
    @marriage = Marriage.find_with_number(params[:marriage_id])
  end
end