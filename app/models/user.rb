class User < ApplicationRecord
  has_many :properties, dependent: :destroy
  has_many :comments, dependent: :destroy
end
