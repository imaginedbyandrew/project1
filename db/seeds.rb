# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tvshow.destroy_all
User.destroy_all

bb = Tvshow.create(:title => 'Breaking Bad', :plot => 'When chemistry teacher Walter White is diagnosed with Stage III cancer and given only two years to live, he decides he has nothing to lose. He lives with his teenage son, who has cerebral palsy, and his wife, in New Mexico. Determined to ensure that his family will have a secure future, White embarks on a career of drugs and crime. He proves to be remarkably proficient in this new world as he begins manufacturing and selling methamphetamine with one of his former students. The series tracks the impacts of a fatal diagnosis on a regular, hard working man, and explores how a fatal diagnosis affects his morality and transforms him into a major player of the drug trade.', :network => 'AMC', :country => 'USA', :poster => 'http://images.wikia.com/breakingbad/images/3/37/Season_3_Poster.jpg', :premiere_date => '03/10/14')

at = User.create(:name => 'Andrew Thompson', :email => 'andrew@imaginedbyandrew.com', :password_digest => 'chicken', :avatar => 'http://www.lifeofmoe.com/wp-content/uploads/2014/07/The-Shining-1.jpg')

# at.shows << bb
