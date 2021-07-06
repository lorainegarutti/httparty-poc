# frozen_string_literal: true

describe 'posting information' do
  it 'register user' do
    @new_user = {
      'nome' => Faker::Name.name,
      'email' => Faker::Internet.email,
      'password' => Faker::Internet.password,
      'administrador' => Faker::Boolean.boolean
    }
    # puts @new_user

    @request = Request.post('/usuarios', body: @new_user)
    expect(@request.code).to eq(201)
    expect(@request['_id']).not_to be nil
    puts @id_user = @request['_id']
    expect(@request['message']).to eq('Cadastro realizado com sucesso')
  end
end
