class Product < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 20..500 }
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :category_products
  has_many :categories, through: :category_products

  has_many :images
  belongs_to :supplier
  
  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end

