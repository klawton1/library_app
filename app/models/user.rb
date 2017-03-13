class User < ApplicationRecord
  has_secure_password
  has_many :library_users, dependent: :destroy
  has_many :libraries, through: :library_users

  validates :email, :password, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
