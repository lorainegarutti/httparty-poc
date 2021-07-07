# frozen_string_literal: true

describe 'posting information for register users' do
  it 'register valid user with a 201 return' do
    @users = Requests.new
    @response = @users.register_user

    expect(@response.code).to eq(201)
    expect(@response['_id']).not_to be nil
    puts @id_user = @response['_id']
    expect(@response['message']).to eq('Cadastro realizado com sucesso')
  end
end
