class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :photo
  mount_uploader :photo, PhotoUploader

  has_many :posts, dependent: :destroy
  has_many :comments

  acts_as_voter
end
