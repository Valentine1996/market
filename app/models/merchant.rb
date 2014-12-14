class Merchant < ActiveRecord::Base
  belongs_to :address
  has_many :customer, :validate => :true, :dependent => :restrict_with_exception

  validates :name, presence: true,
            length: {maximum: 32}

  validates :discount, presence: true,
            numericality: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
