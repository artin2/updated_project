class AddColumnsToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :street, :string
    add_column :tweets, :city, :string
    add_column :tweets, :zip, :string
    add_column :tweets, :latitude, :float
    add_column :tweets, :longitude, :float
  end
end
