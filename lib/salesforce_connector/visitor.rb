module SalesforceConnector

  class Visitor < OauthObject
    def self.get_first_hundred
      Lead.query('SELECT Name, Id from Visitor LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

