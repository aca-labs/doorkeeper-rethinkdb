module Doorkeeper
  module Orm
    module Rethinkdb
      def self.initialize_models!
        require 'support/orm/rethinkdb/timestamps'
        require 'support/orm/rethinkdb/scopes'
        require 'support/orm/rethinkdb/access_grant'
        require 'support/orm/rethinkdb/access_token'
        require 'support/orm/rethinkdb/application'
      end

      def self.initialize_application_owner!
        #require 'doorkeeper/models/concerns/ownership'
        #Doorkeeper::Application.send :include, Doorkeeper::Models::Ownership
      end

      def self.check_requirements!(_config); end
    end
  end
end
