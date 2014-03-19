class Photo < ActiveRecord::Base
  belongs_to :marriage
  has_attached_file :file, 
                  :styles => { :thumb => "60x60#" , :cover => "400x600>"},

                  :default_url => "/images/:style/missing.png",
                  :whiny_thumbnails => true,
                  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
end
