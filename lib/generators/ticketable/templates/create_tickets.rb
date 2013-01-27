class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :<%= name.singularize.downcase %>
      t.integer :status
      t.text :content
      t.references :ticketable, polymorphic: true

      t.timestamps
    end
    add_index :tickets, :<%= name.singularize.downcase %>_id
  end
end
