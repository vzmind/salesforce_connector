module SalesforceConnector

  class Account < OauthObject
    def self.get_first_hundred
      Account.query('SELECT Name, Id from Account LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

