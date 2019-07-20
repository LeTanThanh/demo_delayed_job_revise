class User < ApplicationRecord
  def update_random
    update_attributes name: FFaker::Name.name , email: FFaker::Internet.email   
  end

  handle_asynchronously :update_random

  class << self
    def create_random
      User.create name: FFaker::Name.name , email: FFaker::Internet.email
    end

    handle_asynchronously :create_random
  end
end
