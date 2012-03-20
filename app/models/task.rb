class Task < ActiveRecord::Base

  belongs_to :challenge
  has_many :gains
end
