class Appoint < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  before_save :availability_default

  def availability_default
    self.complaint ||= "unavailable"
  end

end
