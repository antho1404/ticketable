require 'rails/generators'
require 'rails/generators/active_record'

module Ticketable

  class InstallGenerator < Rails::Generators::NamedBase
    include Rails::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)  

    def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def generate_install
      template "ticket.rb", "app/models/ticket.rb"
      migration_template "create_tickets.rb", "db/migrate/create_tickets.rb"
    end
  end

end
