class RevenueRecognition < ApplicationRecord
  def initialize(amount, date)
    self.amount = amount
    self.recognized_on = date
  end

  def getAmount
    self.amount
  end

  def isRecognizableBy(asOf)
    asOf > self.recognized_on || asOf == self.recognized_on
  end
end
