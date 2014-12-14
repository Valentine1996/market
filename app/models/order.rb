class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details, :validate => :true, :dependent => :restrict_with_exception
end
