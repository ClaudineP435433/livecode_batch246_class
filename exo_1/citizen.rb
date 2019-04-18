class Citizen
  attr_reader :first_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    # @age >= 18 ? true : false
    if @age >=18
      true
    else
      false
    end
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end


# mplement a Citizen class with the following API:

# #initialize
# #can_vote? (boolean)
# #full_name (String)
