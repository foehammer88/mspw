class User < ActiveRecord::Base
  attr_accessible :address, :college, :email, :firstname, :lastname, :password, :password_confirmation

  has_many :appointments, :dependent => :destroy
  has_one :game, :dependent => :destroy

  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                          uniqueness: { case_sensitive: false }
   validates :password, presence: true, length: { minimum: 6 }
   validates :password_confirmation, presence: true
end
