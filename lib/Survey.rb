class Survey < ActiveRecord::Base
  has_many(:questions)
  has_many(:answers)
end
