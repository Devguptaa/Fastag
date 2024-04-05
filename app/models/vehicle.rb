class Vehicle < ApplicationRecord
  has_one :fastag, dependent: :destroy
  belongs_to :user
  before_create :check_param
  private
    def check_param
      self.vehicle_number=self.vehicle_number.upcase
      self.vehicle_model=self.vehicle_model.upcase
    end
end
