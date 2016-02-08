class Geschlecht < ActiveRecord::Base
  def name
    titel
  end
end
