class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :diaries
  has_many :likes

  validates :name, {presence: true, length: { maximum: 10 }}
  validates :email, {presene: true, uniqueness: true}
end
