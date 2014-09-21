class User < ActiveRecord::Base
  has_many :card_sets, dependent: :destroy
  has_many :showings, dependent: :destroy
end
