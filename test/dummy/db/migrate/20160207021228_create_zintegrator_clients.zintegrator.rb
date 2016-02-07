# This migration comes from zintegrator (originally 20160207020638)
class CreateZintegratorClients < ActiveRecord::Migration
  def change
    create_table :zintegrator_clients do |t|
      t.string :client_id
      t.string :client_secret

      t.timestamps null: false
    end
  end
end
