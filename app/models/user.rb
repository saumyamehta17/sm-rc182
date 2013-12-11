class User < ActiveRecord::Base
  attr_accessible :name, :photo, processors: :cropper
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  has_attached_file :photo, :styles => { :small => "100x100#" , :larger => "500x500>" }

  after_update :reprocess_photo, if: :cropping

  def cropping
    !crop_x.blank? && !crop_y.blank?  && !crop_w.blank? && !crop_h.blank?
  end

  def reprocess_photo
    photo.reprocess!
  end
end
