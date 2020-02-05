class Contract < ApplicationRecord
  has_one :revenue_recognition, dependent: destroy
  has_one :product, dependent: destroy
  def initialize(product, revenue, whenSigned)
      self.product = product
      self.revenue = revenue
      self.signed_on = whenSigned
  end
end
