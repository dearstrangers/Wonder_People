class Cleaner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :admin #only admin can CRUD valid cleaners
  has_one :cleaners_profile
  has_one :cleaners_preference
  has_one :cleaners_approval_process

end
