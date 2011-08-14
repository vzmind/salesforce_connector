module SalesforceConnector

  class Contact < OauthObject
    def self.get_first_hundred
      Contact.query('SELECT Name, Id from Contact LIMIT 100')
    end

    def self.get_all_by_last_name(last_name)
      #TODO
    end
  end
end

