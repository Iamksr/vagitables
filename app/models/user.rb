class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

       has_many :vegitables, dependent: :destroy
         has_one :cart
         # has_many :favorites
         # has_many :addresses
         # has_many :orders
         # has_many :rating_reviews, dependent: :destroy
         # validates_length_of :phone, is: 10,  message: "Number must be 10 digit long"  
       # def current_user_cart
       #   "cart#{id}"
       # end
       # def is_admin?
       #    return true if self.role =="admin"
       #  end
end
