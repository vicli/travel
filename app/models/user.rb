class User < ActiveRecord::Base
  attr_accessible :login, :name, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.login = login.downcase}
  before_save :create_remember_token
  validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :login, presence: true, format: {with: VALID_EMAIL_REGEX},
  			uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true

  private
  	def create_remember_token
  		self.remember_token=SecureRandom.urlsafe_base64
  	end
end
