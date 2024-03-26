class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :books

  enum role: [:user, :admin]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  validates :role, presence: true

end
