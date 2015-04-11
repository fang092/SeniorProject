class PortfiloImage < ActiveRecord::Base

	belongs_to :portfilio
	has_attached_file :image ,  styles: { thumb: "150x150#" }
	validates_attachment_presence : image
end
