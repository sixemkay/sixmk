class Product < ActiveRecord::Base

  has_many :product_images


  validates_presence_of :description, 
                        :in_stock_counter, 
                        :name,
                        :price,
                        :sold_counter

  validates :price, numericality: { greater_than_or_equal_to: 1 }


  # A more SEO optimized URL slug, also check out
  # to_param method.
  def slug
    self.name.gsub(/\W+/, "-") unless self.name.nil?
  end


  # Rails normally calls .to_s on the model's id, we're
  # going to add the name of the post to that for SEO
  # reasons.  By keeping id first in the string we don't
  # lose any functionality as calling .to_i (as Rails does)
  # on a string that begins with numbers and then has
  # characters will return the number in front, which is
  # the id we need for the controller to find the correct
  # product.
  def to_param
    "#{id}-#{self.slug}"
  end

end
