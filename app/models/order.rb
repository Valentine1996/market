class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details, :validate => :true, :dependent => :restrict_with_exception

  validates :orderdate, presence: true,
            length: {maximum: 8}

  validates :performance, presence: true,
            numericality: true

  def self.search(search)
    if search
      where('orderdate LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
