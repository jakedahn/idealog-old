class Person < ActiveRecord::Base
  has_many :ideas  
end

class Idea < ActiveRecord::Base
  belongs_to :people
end
