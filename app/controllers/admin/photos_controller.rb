class Admin::PhotosController < Admin::BaseController

  inherit_resources
  before_filter :set_marrage
  belongs_to :marriage

  before_filter :set_cover, :only => :index

  respond_to :js, :only => :index

  def create
    create! do |success, failure|
      success.html {render :nothing => true}
    end
  end

  def cover
    @photo = @marriage.photos.find params[:id]
    @marriage.cover_id = @photo.id
    @marriage.save
    @cover = @marriage.cover
    respond_to do |format|
      format.js
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html {redirect_to admin_marriage_photos_path(@marriage)}
    end
  end
  protected
  def resource_params
    params.require(:photo).permit(:file)
  end

  def set_cover
    @cover = @marriage.cover
  end

  def set_marrage
    @marriage = Marriage.find_with_number(params[:marriage_id])
  end
end