class Activity < ActiveRecord::Base
  
  def weight_for_selected
    weight || 1
  end
  
  def full_name
    output = name
    output += " (#{focus})" if focus && focus != ''
    output += " x#{weight}" if weight && weight != 1
    output
  end
end
