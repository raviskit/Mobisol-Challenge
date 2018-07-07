class User < ApplicationRecord
  attr_accessor :shoe_size, :nickname
  include CustomAttributes
end
