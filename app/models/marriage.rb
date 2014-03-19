class Marriage < ActiveRecord::Base
  has_many :photos
  belongs_to :admin
  before_create :generate_salt
  has_many :schedules

  validates :m_name, :f_name, presence: true

  def generate_salt
    self.salt = SecureRandom.hex(10).upcase[0, 3]
  end

  def number
    unless self.salt
      self.generate_salt
      self.save
    end
    self.created_at.strftime("%y%m") + format("%0.8d", self.id) + self.salt
  end

  def to_param
    number
  end

  scope :find_with_number, ->(number) { where("id = ? AND salt = ?", number[4, 8].to_i, number[12, 3]) }


  def cover
    begin
      if self.cover_id.nil?
        self.photos.first
      else
        self.photos.find(self.cover_id)  || self.photos.first
      end
    rescue
      nil
    end
  end
end
