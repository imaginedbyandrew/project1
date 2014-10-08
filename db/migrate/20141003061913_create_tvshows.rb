class CreateTvshows < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|
    	t.string :title
    	t.text :plot
    	t.string :network
    	t.string :country
    	t.text :poster
    	t.date :premiere_date
        t.string :user_id
    	t.timestamps
    end
  end
end
