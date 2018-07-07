# frozen_string_literal: true

# GraphQL query creates an instance of contributor for every user in the hash

class Contributors
  attr_accessor :id, :url, :name, :avatar_url, :login, :location, :email

  def generate_avatar
    avatar_url
  end
end
