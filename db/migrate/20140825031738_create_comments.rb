class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :commenter
      t.belongs_to :post
      t.timestamps
    end
  end
end
