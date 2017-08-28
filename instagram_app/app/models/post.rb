class Post < ApplicationRecord
  validates :image, presence: true
  belongs_to :user

  has_attached_file :image, styles: { :medium => "640x640!", :small => "320x320!" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.reverse_order
    all.reverse
  end

  def posted_at
    created_at.localtime.strftime("%H:%M (%d/%m/%y)")
  end
  
end
