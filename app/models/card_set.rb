class CardSet < ActiveRecord::Base
  belongs_to :user
  has_many :card_set_cards, dependent: :destroy
  has_many :cards, through: :card_set_cards
end
