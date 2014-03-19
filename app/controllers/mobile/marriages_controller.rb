class Mobile::MarriagesController < Mobile::BaseController
  def show
    @marriage = Marriage.find_with_number(params[:id]).first
    @cover = @marriage.cover
    @photos = @marriage.photos
    @schedules = @marriage.schedules
  end
end