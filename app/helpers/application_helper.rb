module ApplicationHelper
  def random_name
    Faker::Name.name
  end
  
  def random_phone
    Faker::PhoneNumber.phone_number
  end
end
