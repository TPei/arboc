class Schueler < ActiveRecord::Base
  belongs_to :geschlecht
  belongs_to :schule
  belongs_to :verbleib
  belongs_to :schuljahr

  validates_presence_of :schule, :klassenstufe, :vorname, :nachname, :schuljahr
end
