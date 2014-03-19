class Admin < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  def email_required?
    false
  end

  def email_changed?
    false
  end
  has_many :marriages
end
