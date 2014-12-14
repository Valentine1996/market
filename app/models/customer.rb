class Customer < ActiveRecord::Base
  belongs_to :address
  belongs_to :merchant
  has_many :order, :validate => :true, :dependent => :restrict_with_exception

  validates :name, presence: true,
            length: {maximum: 32}

  validates :rating, presence: true,
            numericality: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
