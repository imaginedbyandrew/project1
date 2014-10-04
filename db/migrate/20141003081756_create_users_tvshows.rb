class CreateUsersTvshows < ActiveRecord::Migration
  def change
    create_table :users_tvshows do |t|
    t.string :user_id
		t.string :tvshow_id
    end
  end
end


# NOTE - THE ABOVE MAY NEED TO BE CHANGED TO T.INTEGER #