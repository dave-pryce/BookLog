class Booktype < ActiveRecord::Migration
  def change
  	create_table :booktypes do |t|
      t.text :type
      t.timestamps
  end
end
