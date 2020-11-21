# frozen_string_literal: true

class CreatePancakes < ActiveRecord::Migration[6.0]
  def change
    create_table :pancakes do |t|
      t.integer :flip_status, default: 0, null: false
      t.datetime :flipped_at

      t.timestamps
    end
  end
end
