class CreateIdols < ActiveRecord::Migration[6.0]
  def change
    create_table :idols do |t|
      t.string :name
      t.string :group_name
      t.string :member_color
      t.string :x_account
      t.string :instagram_account
      t.string :tiktok_account
      t.string :showroom_account

      t.timestamps
    end
  end
end
