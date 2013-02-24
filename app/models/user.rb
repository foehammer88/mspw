# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  firstname       :string(255)
#  lastname        :string(255)
#  college         :string(255)
#  address         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :address, :college, :email, :firstname, :lastname, :password, :password_confirmation

  has_many :appointments, :dependent => :destroy
  has_one :game, :dependent => :destroy

  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                          uniqueness: { case_sensitive: false }
   validates :password, presence: true, length: { minimum: 6 }
   validates :password_confirmation, presence: true

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
