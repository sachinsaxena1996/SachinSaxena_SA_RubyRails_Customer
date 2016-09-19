class SupportAgent < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable
	has_many :support_requests
 	has_many :customers, through: :support_requests 	
end
