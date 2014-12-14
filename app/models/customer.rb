class Customer < ActiveRecord::Base
  belongs_to :address
  belongs_to :merchant
  has_many :order, :validate => :true, :dependent => :restrict_with_exception
end
