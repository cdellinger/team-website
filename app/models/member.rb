class Member < ActiveRecord::Base
  belongs_to :member_type
  def full_name
    self.first_name + ' ' + self.last_name
  end
end
