class Schueler < ActiveRecord::Base
  belongs_to :geschlecht
  belongs_to :schule
  belongs_to :verbleib
  belongs_to :schuljahr
  has_and_belongs_to_many :berufs_wunsch

  validates_presence_of :schule, :klassenstufe, :vorname, :nachname, :schuljahr

  def name
    "#{vorname} #{nachname}"
  end
end
