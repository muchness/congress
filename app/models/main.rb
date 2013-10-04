require_relative '../db/config'
require_relative 'legislator'

class Congress
  def name 
    self.title + " " + self.firstname + " " + self.middlename + " " + self.lastname
  end
end