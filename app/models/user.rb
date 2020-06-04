class User < ApplicationRecord
  has_many :diaries
  has_many :likes

  validates :name, {presence: true}
  validates :email, {presene: true, uniqueness: true}
end
