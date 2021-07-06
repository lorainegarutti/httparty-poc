# frozen_string_literal: true

describe 'getting information' do
  it 'get users' do
    @users = Request.get('/usuarios')
    expect(@users.code).to eq(200)
    puts @users
    # expect(@users['usuarios'][0]['nome']).to eq('Fulano da Silva')
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

# stack_exchange = StackExchange.new("stackoverflow", 1)
# puts stack_exchange.questions
# puts stack_exchange.users

# httparty "https://api.stackexchange.com/2.2/questions?site=stackoverflow" --format json (--help)
