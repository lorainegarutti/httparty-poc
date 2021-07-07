# frozen_string_literal: true

describe 'changing users information' do
  it 'modify valid user information with a 200 return' do
    @id_user = 'BiToEmWvoaAfXS00'

    @users = Requests.new
    @response = @users.modify_user_information(@id_user)

    expect(@response.code).to eq(200)
    expect(@response['message']).to eq('Registro alterado com sucesso')
  end
end
