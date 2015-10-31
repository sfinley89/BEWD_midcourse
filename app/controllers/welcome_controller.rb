class WelcomeController < ApplicationController
	
  
  def index
  	@ask 
  end

  def ask
  end

  

  def yoda
  	#@voice = HTTParty.get('https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.').parsed_response
  	
  	#sentence = "You+will+learn+how+to+speak+like+me+someday.++Oh+wait."
  	sentence = params[:sentence]
  	#render plain: ENV["YODA_KEY"]

 	@response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence="+sentence,
 		headers:{
   		"X-Mashape-Key" => ENV["YODA_KEY"],
   		"Accept" => "text/plain",
  		}
  end
  
end
