require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('../models/student.rb')
also_reload('./models/*')


get '/houses' do
  @houses = House.find_all()
  erb(:"houses/index")
end
