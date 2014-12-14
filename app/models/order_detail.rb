class OrderDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates :number, presence: true,
            numericality: true

  def self.search(search)
    if search
      where('number LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
