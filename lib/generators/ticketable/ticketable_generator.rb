# require 'rails/generators'
# require 'rails/generators/active_record'

module Ticketable

  class InstallGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)  

    argument :creator, type: :string, required: true, desc: "The class used for the creator of the ticket (Usually User)"
    # include Rails::Generators::Migration

    # argument :creator, required: true, type: :string, desc: "The class used for the creator of the ticket (Usually User)"

    # def self.source_root
    #   @source_root ||= File.expand_path('../templates', __FILE__)
    # end

    # def self.next_migration_number(path)
    #   Time.now.utc.strftime("%Y%m%d%H%M%S")
    # end

    def generate_install
      template "ticket.rb", "app/models/ticket.rb"
      migration_template "create_tickets.rb", "db/migrate/create_tickets.rb"
    end
  end

end
