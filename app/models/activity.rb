class Activity < ActiveRecord::Base
  
  def weight_for_selected
    weight || 1
  end
  
  def self.get_random
    Activity.all.sample
  end
end
