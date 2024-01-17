require 'rest-client'
class DogApiService
  BASE_URL = 'https://dog.ceo/api/breed'

  def self.fetch_breed(breed)
    url = "#{BASE_URL}/#{breed}/images/random"
    response = RestClient.get(url, params: { breed: breed })

    handle_response(response)
  rescue RestClient::ExceptionWithResponse => e
    handle_error(e.response)
  end

  private

  def self.handle_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.handle_error(response)
    { error: "API request failed with status #{response.code}" }
  end
end
