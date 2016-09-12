class ProductImage < ActiveRecord::Base

  belongs_to :product


  default_scope { order('ordinal asc') }


  validates_presence_of :ordinal, 
                        :product, 
                        :url_square_600, 
                        :url_square_1200

  validates :ordinal, numericality: { greater_than_or_equal_to: 1 }

end
