class User < ApplicationRecord
  extend Devise::Models

  validates :email, presence: true, length: {minimum: 10}
  validates :password, presence: true, length: {minimum: 6}
  validates :name, presence: true
  validates :age, presence: true
  validates :country, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, :dependent => :destroy

  after_create :send_welcome_email
  def send_welcome_email
    UserMailer.welcome_email_for_user(self.email).deliver_now
  end

end
