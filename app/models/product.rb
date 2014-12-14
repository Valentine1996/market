class Product < ActiveRecord::Base
  has_many :order_detail, :validate => :true, :dependent => :restrict_with_exception
end
