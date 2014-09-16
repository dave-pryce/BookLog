class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.text :descritpion

      t.timestamps
    end
  end
end
