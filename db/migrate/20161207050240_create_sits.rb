class CreateSits < ActiveRecord::Migration[5.0]
  def change
    create_table :sits do |t|
      t.string :player
      t.text :sit_em

      t.timestamps
    end
  end
end
