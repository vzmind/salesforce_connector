module SalesforceConnector

  class Opportunity < OauthObject
    #doesn't seem to pick up env variable correctly if I set it here
    #headers 'Authorization' => "OAuth #{ENV['sfdc_token']}"

    def self.get_first_hundred
      Opportunity.query('SELECT Name, Id from Opportunity LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

