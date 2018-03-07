class CreateMeths < ActiveRecord::Migration[5.1]
  def change
    create_table :meths do |t|
      t.integer :program_id
      t.text :description

      t.timestamps
    end
  end
end
