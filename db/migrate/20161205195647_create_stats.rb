class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.string :player
      t.string :team

      t.timestamps
    end
  end
end
