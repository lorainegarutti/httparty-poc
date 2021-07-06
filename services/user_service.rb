# frozen_string_literal: true

module Request
  include HTTParty
  base_uri 'https://serverest.dev'
  format :json
end
