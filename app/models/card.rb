class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :person
end
