class Showing < ActiveRecord::Base
  belongs_to :user
  belongs_to :card_set
  belongs_to :card
end
