class Address < ActiveRecord::Base

  belongs_to :addressable, polymorphic: true


  validates_presence_of :city, 
                        :country, 
                        :line1,
                        :state,
                        :zip

  validates :zip, numericality: { only_integer: true }

end
