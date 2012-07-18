class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :people

      t.timestamps
    end
    add_index :comments, :people_id
  end
end
