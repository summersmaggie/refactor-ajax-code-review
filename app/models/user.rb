class User < ApplicationRecord
  has_secure_password
  has_many :orders
  
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:within => 6..40},
                       :allow_blank => true,
                       :on => :update

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
