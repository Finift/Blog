class Profile < ApplicationRecord
  belongs_to :user
  attr_accessor :registration_date, :full_name, :birth_date, :phone_number

  def initialize(registration_date, full_name, birth_date, phone_number)
    @registration_date = registration_date
    @full_name = full_name
    @birth_date = birth_date
    @phone_number = phone_number
  end

  def to_s
    "Profile:\n" \
    "  Full Name: #{@full_name}\n" \
    "  Birth Date: #{@birth_date}\n" \
    "  Registration Date: #{@registration_date}\n" \
    "  Phone Number: #{@phone_number}"
  end
end
