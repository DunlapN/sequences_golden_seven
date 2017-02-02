class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob # Returns a Rational number
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end
end
