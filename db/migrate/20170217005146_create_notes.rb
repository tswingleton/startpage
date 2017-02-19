class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :Title
      t.string :Notes

      t.timestamps
    end
  end
end
