class ApplicationRecord < ActiveRecord::Base
    def self.default_scope
    if User.current != nil 
      return where(:user_id => User.current.id)
    end
  end
  
  self.abstract_class = true
end
