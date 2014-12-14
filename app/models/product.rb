class Product < ActiveRecord::Base
  has_many :order_detail, :validate => :true, :dependent => :restrict_with_exception

  validates :name, presence: true,
            length: {maximum: 32}
  validates :maker, presence: true,
            length: {maximum: 32}
  validates :color, presence: true,
            length: {maximum: 32}
  validates :price, presence: true,
            numericality: true

  def self.search(search)
    if search
      where('name LIKE ? OR maker LIKE ? OR color LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
