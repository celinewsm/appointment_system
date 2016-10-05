class User < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appoints

  before_save :type_admin_default


  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  # validates :password,
  validates :password, confirmation: true,
  length: { in: 8..72 },
  on: :create

  validates :password_confirmation, presence: true

  has_secure_password

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end


  def type_admin_default
    self.account = "patient"
  end



end
