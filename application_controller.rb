require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @my_school_time = params[:school_time]
     @final_question_1=params[:question_1]
     @final_question_2=params[:question_2]
     @final_question_3=params[:question_3]
    @question_1_method=question_1_method(@my_school_time,@final_question_1)
    @question_2_method=question_2_method(@final_question_2)
    @question_3_method=question_3_method(@final_question_3)
     erb :results
   end 
  
  
  get '/help' do
    erb :help
  end
  
  get '/about_us' do
    erb :about_us
  end
    
  get '/home' do
    erb :home
  end
  
end 
  
   
