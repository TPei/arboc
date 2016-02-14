class BerufsWunsch < ActiveRecord::Base
  has_and_belongs_to_many :schueler
end
