# == Schema Information
#
# Table name: tvshows
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  plot          :text
#  network       :string(255)
#  country       :string(255)
#  poster        :text
#  premiere_date :date
#  created_at    :datetime
#  updated_at    :datetime
#

class Tvshow < ActiveRecord::Base
end
