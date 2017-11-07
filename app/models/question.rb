class Question < ApplicationRecord
  has_many :answer
  include HasGravatar
end
