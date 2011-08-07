require 'httparty'

module SalesforceConnector
  class OauthObject
    include HTTParty
    format :json

    def self.set_headers
      headers 'Authorization' => "OAuth #{ENV['sfdc_token']}"
    end

    def self.root_url
      @root_url = ENV['sfdc_instance_url']+"/services/data/v"+ENV['sfdc_api_version']
    end

    def self.query(str)
      self.set_headers
      result = get(self.root_url+"/query/?q=#{CGI::escape(str)}")
      return result.parsed_response["records"] || []
    end

  end
end
