require_relative '../../db/config'

class Legislator < ActiveRecord::Base

  scope :active, ->{ where('in_office = ?', 1) }

  # def self.active
  #   Legislator.where('in_office = ?', 1).each do |leg|
  #     puts "#{leg.name} is in the house (and/or Senate)."
  #   end  
  # end


  def name 
    self.title + " " + self.firstname + " " + self.lastname
  end

  def self.state_people
    puts "What state are you from?"
    state = gets.chomp
    puts "Your Legislators are:"
    Legislator.where('state = ?', state).each do |leg|
      puts "#{leg.name}"
    end  
  end

  def self.retired 
    puts "What state are you from?"
    state = gets.chomp
    puts "Gone but not forgotten:"

  end  

end

# Class Senators < Legislators
# end

# Class Representatives < Legislators
# end
# person = Legislator.find(6)
# p person.name
p Legislator.active.name