class Activity < ActiveRecord::Base
  
  def weight_for_selected
    weight || 1
  end
end
