class Basic < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :first_name
      t.string :last_name
      t.text :facebook_account
      t.text :twitter_account
      t.timestamps
    end
    create_table :messages do |t|
      t.text :text_message
      t.text :video_link
      t.text :photo_link
      t.datetime :send_date
      t.references :user
      t.timestamps
    end
    create_table :recipients do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :facebook_account
      t.text :twitter_account
      t.references :user
      t.timestamps
    end
    create_table :message_recipient do |t|
      t.references :recipients
      t.references :messages
      t.timestamps
    end
  end
end