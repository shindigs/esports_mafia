class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :player_name

      t.timestamps
    end
  end
end
