class Address < ActiveRecord::Base
  has_many :merchants, :validate => :true, :dependent => :restrict_with_exception

  validates :country, presence: true,
            length: {maximum: 32}

  validates :city, presence: true,
            length: {maximum: 32}

  validates :street, presence: true,
            length: {maximum: 32}

  validates :number, presence: true,
            numericality: true

  def short_address
    country + ' ' + city + ' ' + street + ' ' + number.to_s
  end

  def self.search(search)
    if search
      where('country LIKE ? OR city LIKE ? OR street LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
