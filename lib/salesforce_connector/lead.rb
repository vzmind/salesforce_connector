module SalesforceConnector

  class Lead < OauthObject
    def self.get_first_hundred
      Lead.query('SELECT Name, Id from Lead LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

