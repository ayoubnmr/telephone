class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.string :addres
      t.text :dob
      t.references :phonenum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
