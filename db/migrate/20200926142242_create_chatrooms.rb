class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.string :img_url
      t.string :description
      t.timestamps
    end
  end
end
