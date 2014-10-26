class WordHowl < ActiveRecord::Base
  has_one :howl, as: :content
end
