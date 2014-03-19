class Mobile::MarriagesController < Mobile::BaseController
  before_filter :set_marriage
  

  def show
    @cover = @marriage.cover
  end

  def gallery
    @photos = @marriage.photos
    respond_to do |format|
      format.html {render :layout => false}
    end
  end

  def schedules
    @schedules = @marriage.schedules
    respond_to do |format|
      format.html {render :layout => false}
    end
  end

  def menu
    respond_to do |format|
      format.html {render :layout => false}
    end
  end

  private
  def set_marriage
    @marriage = Marriage.find_with_number(params[:id]).first
  end
end