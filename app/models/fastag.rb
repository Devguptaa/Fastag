class Fastag < ApplicationRecord
  belongs_to :vehicle
  has_many :transactions
  after_create :check_param
  validates :accountnumber,presence: true
  private
    def check_param
      self.vehiclenumber=self.vehiclenumber.upcase
    end
end
