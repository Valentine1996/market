class Address < ActiveRecord::Base
  validates :country, presence: true,
      length: {maximum: 32}

  validates :city, presence: true,
      length: {maximum: 32}

  validates :street, presence: true,
      length: {maximum: 32}

  validates :buildNumber, presence: true,
      numericality: true
end
