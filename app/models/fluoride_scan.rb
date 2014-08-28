class FluorideScan < ActiveRecord::Base
  validates_presence_of :water_source_id, :infant_id

  belongs_to :infant
  belongs_to :water_source

  def calc_toxicity
    water_concentration = water_source.latest_fluoride_test.measurement * infant.daily_intake  
    toxicity = water_concentration / infant.weight
  end

  def health_ref_val
    0.05
  end

  def toxicity_level_class
    t = toxicity
    case 
      when t > 0.07
        return "danger"
      when t < 0.05
        return "success"
      else
        return "warning"
    end
  end

  class << self
    def home_treatments
      [ "None", "Brita", "Reverse Osmosis", "Boiling" ]
    end
  end
end
