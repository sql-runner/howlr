class WordHowl < ActiveRecord::Base
  belongs_to :howl, as: :content
end
