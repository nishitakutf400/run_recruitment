class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many :recitments, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :recitment_comments, dependent: :destroy

  enum gender: { 男: 0, 女: 2}
end
