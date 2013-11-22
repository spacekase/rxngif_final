class User < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy

  def full_name
    return first_name + " " + last_name
  end
end
