class CreateChekis < ActiveRecord::Migration[6.0]
  def change
    create_table :chekis do |t|
      t.string :cheki_image_url
      t.date :date

      t.timestamps
    end
  end
end
