class Admin::MarriagesController < Admin::BaseController
  inherit_resources

  protected
  def begin_of_association_chain
    current_admin
  end
  def resource
      @marriage = resource_class.find_with_number(params[:id]).first
  end
  def resource_params
    params.require(:marriage).permit(:m_name, :f_name)
  end
end