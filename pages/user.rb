# frozen_string_literal: true

class Requests
  include HTTParty
  # headers 'Content-Type' => 'application/json'
  base_uri 'https://serverest.dev'
  format :json

  def initialize
    @new_user = {
      'nome' => Faker::Name.name,
      'email' => Faker::Internet.email,
      'password' => Faker::Internet.password,
      'administrador' => Faker::Boolean.boolean
    }
  end

  def get_user(path)
    self.class.get(%(/usuarios#{path}))
  end

  def register_user
    self.class.post('/usuarios', body: @new_user)
  end

  def modify_user_information(id_user)
    self.class.put(%(/usuarios/#{id_user}), body: @new_user)
  end
end

# # Or wrap things up in your own class
# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: { site: service, page: page } }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end

# httparty "https://api.stackexchange.com/2.2/questions?site=stackoverflow" --format json (--help)
