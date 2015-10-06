class CreateOurJokes < ActiveRecord::Migration
  def change
    create_table :our_jokes do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
