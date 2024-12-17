# The Registrant class represents a person who interacts with DMV services.
# A registrant can have a permit and progress to earning a license.
class Registrant
  attr_reader :name, :age, :license_data

  # Initializes the registrant with a name, age, and optional permit status.
  # license_data is initialized to track written, road, and renewed license status.
  def initialize(name, age, permit = false)
    @name = name
    @age = age
    @permit = permit
    @license_data = { written: false, license: false, renewed: false }
  end

  # Checks if the registrant has a permit.
  def permit?
    @permit
  end

  # Allows a registrant to earn a permit.
  def earn_permit
    @permit = true
  end
end

