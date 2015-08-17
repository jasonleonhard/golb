class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :com
      t.text :body

      t.timestamps null: false
    end
  end
end
