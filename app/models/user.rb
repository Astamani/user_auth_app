class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
         
  has_one_attached :avatar
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile


  ROLES = %w[admin teacher student].freeze

  def admin?
    role == "admin"
  end

  def teacher?
    role == "teacher"
  end

  def student?
    role == "student"
  end
end
