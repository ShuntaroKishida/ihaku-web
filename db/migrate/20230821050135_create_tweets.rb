class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string     :name, null: false
      t.text       :text, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end