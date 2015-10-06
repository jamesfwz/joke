class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
