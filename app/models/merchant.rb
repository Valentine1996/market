class Merchant < ActiveRecord::Base
  belongs_to :address, validate: :true
end
