class Admin < ActiveRecord::Base
  attr_accessor :password
  validates_confirmation_of :password
  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(username, password)
    admin = Admin.where(username: username).first
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end

  def test_log_in
    visit log_in_path
    fill_in 'Username', :with => "Frank"
    fill_in 'Password', :with => "cupoftea"
    click_on 'Log In'
  end
end
