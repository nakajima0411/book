class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books

  attachment :profile_image

  validates :name,
    uniqueness: { case_sensitive: :false },
    length: { minimum: 4, maximum: 20 }
  validates :introduction, length: { maximum: 50 }
end