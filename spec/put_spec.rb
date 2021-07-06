# frozen_string_literal: true

describe 'changing information' do
  it 'modify user information' do
    @new_user = {
      'nome' => Faker::Name.name,
      'email' => Faker::Internet.email,
      'password' => Faker::Internet.password,
      'administrador' => Faker::Boolean.boolean
    }
    # puts @new_user

    @id_user = 'DE7RTKT8SWmcIc3e'
    @request = Request.put(%(/usuarios/#{@id_user}), body: @new_user)
    expect(@request.code).to eq(200)
    expect(@request['message']).to eq('Registro alterado com sucesso')
  end
end
