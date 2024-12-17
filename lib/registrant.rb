# The Registrant class represents a person using DMV services.
class Registrant
  # Readable attributes for registrant details and license data
  attr_reader :name, :age, :license_data, :permit

  # Initializes a Registrant object
  # @param name: String, name of the registrant
  # @param age: Integer, age of the registrant
  # @param permit: Boolean, whether the registrant has a permit (default: false)
  def initialize(name, age, permit = false)
    @name = name
    @age = age
    @permit = permit
    @license_data = { written: false, license: false, renewed: false }
  end

  # Checks if the registrant has a permit
  # @return: Boolean value for permit status
  def permit?
    @permit
  end

  # Updates the registrant to indicate they have earned a permit
  def earn_permit
    @permit = true
  end
end
