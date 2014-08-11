class Document < ActiveRecord::Base
extend  Enumerize
  enumerize :type, in: [:url, :image, :mp3, :txt, :doc, :other], default: :other
  enumerize :access_type, in: [:public, :private], default: :private
  mount_uploader  :file, FileUploader

validates_presence_of :title


  belongs_to :user
  self.inheritance_column = nil
end
