class CreateGoogles < ActiveRecord::Migration[5.2]
  def change
    create_table :googles do |t|
      t.string :field_1
      t.string :field_2
      t.string :field_3

      t.timestamps
    end
  end
end
