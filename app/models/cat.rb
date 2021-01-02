class Cat < ApplicationRecord
  COLORS = ['black', 'white', 'gray', 'orange']

  def age
    require 'date'
    now = Time.now.to_date
    age = (now-self.birth_date).to_i/365
  end

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS,
    message: "must be 'black', 'white', 'gray', or 'orange'."}
  validates :sex, inclusion: { in: ["M", "F"],
    message: "must be 'M' or 'F'."}
end