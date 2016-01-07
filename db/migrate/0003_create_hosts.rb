class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :fqdn
      t.string :signature
      t.string :internal_ip
      t.datetime :last_update
      t.references :account

      t.timestamps null: false
    end
  end
end
