class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs, id: false do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
