# db/migrate/xxx_create_agents.rb
class CreateAgents < ActiveRecord::Migration[7.2]
  def change
    create_table :agents do |t|
      t.string :codename, null: false
      t.integer :level, null: false
      t.boolean :active, null: false, default: true
      t.timestamps
    end
    add_index :agents, :codename, unique: true
    add_check_constraint :agents, 'level BETWEEN 1 AND 10', name: 'level_range_check'
  end
end