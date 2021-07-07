# frozen_string_literal: true

describe 'getting user information' do
  it 'get all users with a 200 return' do
    @users = Requests.new
    @response = @users.get_user('/')

    expect(@response.code).to eq(200)
    # expect(@users['usuarios'][0]['nome']).to eq('Fulano da Silva')
  end
end
