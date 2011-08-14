module SalesforceConnector

  class Opportunity < OauthObject
    def self.get_first_hundred
      Opportunity.query('SELECT Name, Id from Opportunity LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

