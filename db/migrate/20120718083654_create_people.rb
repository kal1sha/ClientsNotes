class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :secondname
      t.text :description

      t.timestamps
    end
  end
end
