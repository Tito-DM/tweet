class User < ApplicationRecord
    has_secure_password 
    validates :email ,presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/,message:"mustbe avalid email"}
    validates :password, presence: true
end
