class DemoController < ApplicationController
	
	layout false

  	def index
		# render('hello')
	end

	def hello
		@array = [1,2,3,4,5]
		# render('index')
		# redirect_to(:controller => 'demo', :action => 'index')
	end
	  
end
