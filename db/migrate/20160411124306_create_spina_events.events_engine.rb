# This migration comes from events_engine (originally 20160411102025)
class CreateSpinaEvents < ActiveRecord::Migration
  def change
    create_table :spina_events do |t|
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps null: false
    end
  end
end
