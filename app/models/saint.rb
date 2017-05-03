class Saint < ActiveRecord::Base
	  has_many :attendances

	  attr_accessor :password
	  before_save :prepare_password

	  validates_presence_of :email
	  validates_uniqueness_of :email
	  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

	  # login use email address
	  def self.authenticate(login, pass)
	    user = find_by_email(login)
	    return user if user && user.matching_password?(pass)
	  end

	  def matching_password?(pass)
	    self.password_hash == encrypt_password(pass)
	  end

	  private

	  def prepare_password
	  	password = @password
	  	
	    if password.blank?
	    	password = "123456"
	    end

	    self.password_salt = Digest::SHA1.hexdigest([Time.now, rand].join)
	    self.password_hash = encrypt_password(password)
	  end

	  def encrypt_password(pass)
	    Digest::SHA1.hexdigest([pass, password_salt].join)
	  end

end