class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ['black', 'white', 'orange']
  validates :color, inclusion: {in: COLORS,
    message: "%{color} is not a valid color"}


  def age
    now = Date.today
    year = now.year - self.birth_date.year
    year = year - 1 if (self.birth_date + year.year) > now
    return year
  end

end
