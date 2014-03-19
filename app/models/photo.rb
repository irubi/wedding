include Paperclip::Storage::Aliyun
class Photo < ActiveRecord::Base
  belongs_to :marriage
  has_attached_file :file, 
                  :styles => { :thumb => "60x60#" , :cover => "400x600>"},
                  storage: :aliyun,
                  :default_url => "/images/:style/missing.png",
                  :whiny_thumbnails => true,
                  path: 'public/system/:class/:attachment/:id_partition/:style/:filename',
                  url: "http://#{oss_connection.fetch_file_host}/public/system/:class/:attachment/:id_partition/:style/:filename"
end
