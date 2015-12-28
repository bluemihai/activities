class Activity < ActiveRecord::Base

  default_scope -> { order(:name) }
  
  def weight_for_selected
    weight || 1
  end
  
  def full_name
    output = name
    output += " (#{focus})" if focus && focus != ''
    output += " x#{weight}" if weight && weight != 1
    output
  end

  def self.sample_weighted
    tickets = []
    Activity.all.each { |a| a.weight.times {tickets << a} }
    tickets.sample
  end
end
