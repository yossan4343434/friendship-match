class User < ApplicationRecord
  has_many :standbies
  has_many :matches
end
