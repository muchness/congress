require_relative '../../db/config'

class Legislator < ActiveRecord::Base

  scope :active, ->{ where(in_office: '1') }
  scope :inactive, ->{ where(in_office: '0') }
  scope :senator, ->{ where(title: 'Sen') }
  scope :representative, ->{ where(title: 'Rep') }
  scope :male, ->{ where(gender: 'M') }
  scope :female, ->{ where(gender: 'F') }
  scope :republican, ->{ where(party: 'R')}
  scope :democrat, ->{ where(party: 'D')}
  scope :independent, ->{ where(party: 'I')}


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
end

Legislator.independent.each do |leg|
  puts "#{leg.name} #{leg.party}"
end 









