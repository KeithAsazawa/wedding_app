class Photo < ActiveRecord::Base
  attr_accessible :description, :title, :image
  belongs_to :album

  validates :title, presence: true
  validates_attachment :image, presence: true, 
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  														 size: { less_than: 5.megabytes }
  
  has_attached_file :image
end
