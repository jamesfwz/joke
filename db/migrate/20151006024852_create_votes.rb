class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :session_code
      t.references :our_joke
      t.boolean :like
      t.timestamps
    end
  end
end
