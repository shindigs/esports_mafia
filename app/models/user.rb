class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

#attr_accesible :username, :email, :password, :password_confirmation, :remember_me, :login


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :votes

  #validates :username, 
  #	:uniqueness => {
 # 		:case_sensitive => false
  #	}

 # def self.find_first_by_auth_conditions(warden_conditions)
  #    conditions = warden_conditions.dup
  #    if login = conditions.delete(:username)
   #     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
   #   else
   #     where(conditions).first
  #    end
  #  end
end
