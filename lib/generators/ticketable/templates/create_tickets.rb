class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :<%= name.singularize.downcase %>, null: false
      t.integer :status, default: 0
      t.text :content
      t.references :ticketable, polymorphic: true

      t.timestamps
    end
    add_index :tickets, :<%= name.singularize.downcase %>_id
    add_index :tickets, :status
  end
end
