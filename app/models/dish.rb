class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :cuisine

  # Indirect associations

  has_many   :venues,
             :through => :bookmarks,
             :source => :venue

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
