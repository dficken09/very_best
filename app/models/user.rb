class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :bookmarks,
             :source => :venue

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

end
