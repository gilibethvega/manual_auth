class User < ApplicationRecord
  has_secure_password
  has_many :stories
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def to_s
    name
  end
end
