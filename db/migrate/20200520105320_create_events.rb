class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.boolean :disp_flg
      t.datetime :start
      t.datetime :end
      t.string :allDay
      t.references :user
      t.timestamps
    end
  end
end
