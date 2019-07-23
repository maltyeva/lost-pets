class Pet < ApplicationRecord

  SPECIES = %w(Dog Cat Rabbit)
  validates :species, inclusion: {in: SPECIES}
  validates :location, presence: true
end
