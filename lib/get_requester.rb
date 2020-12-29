require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def initialize(url)
        @@URL = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        structures = JSON.parse(self.get_response_body)
        structures.collect do |structure|
            structure
        end
    end


end
