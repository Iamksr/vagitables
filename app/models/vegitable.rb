class Vegitable < ApplicationRecord
	  mount_uploader :image, ImageUploader
	  belongs_to :category
	   has_many :cart_items


	    def discount_percentage

  	if price.to_i.present? && price.to_i > 0 && current_price.to_i.present? && current_price.to_i > 0
  		" " + (100 - (price.to_f / current_price.to_f * 100.0)).to_s + "%"
  	else
  		nil
  	end
  end
end
