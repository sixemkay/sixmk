class Customer < ActiveRecord::Base
  include Addressable

  validates :email, presence: true, uniqueness: true

end
