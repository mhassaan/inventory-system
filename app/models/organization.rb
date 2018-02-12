class Organization < ApplicationRecord
  has_many :users

  def to_param
    short_name
  end
  
end
