class Portfolio < ActiveRecord::Base

  has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", :thumb => "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :photos  , dependent: :destroy
  has_many :pdfs  , dependent: :destroy
  belongs_to :user
  validates :user_id, presence: true
end
