class Merchant < ActiveRecord::Base
  belongs_to :address
  has_many :customer, :validate => :true, :dependent => :restrict_with_exception

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
