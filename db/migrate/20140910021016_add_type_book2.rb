class AddTypeBook2 < ActiveRecord::Migration
  def change
  	add_reference :books, :type, index: true
    end
end
