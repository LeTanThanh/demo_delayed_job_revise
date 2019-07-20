class User < ApplicationRecord
  def update_random
    update_attributes name: FFaker::Name.name , email: FFaker::Internet.email   
  end

  class << self
    def create_random
      User.create name: FFaker::Name.name , email: FFaker::Internet.email
    end
  end
end
