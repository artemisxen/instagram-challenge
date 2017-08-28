class Post < ApplicationRecord
  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x640!", :small => "320x320!" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.reverse_order
    all.reverse
  end

end
