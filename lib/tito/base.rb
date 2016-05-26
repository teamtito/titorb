module Tito
  class Base < JsonApiClient::Resource
    self.site = ENV['TITO_SITE'] || "https://api.tito.io/v2"

    def self.with_api_key(api_key)
      with_params(api_key: api_key)
    end
  end
end