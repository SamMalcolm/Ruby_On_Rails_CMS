class DemoController < ApplicationController
	
	layout false

  	def index
		# render('hello')
	end

	def hello
		@array = [1,2,3,4,5]
		@id = params['id']
		@page = params[:page]
		# render('index')
		# redirect_to(:controller => 'demo', :action => 'index')
	end

	def about
		render('about_us')
	end

	def contact
		render('contact_us')
	end
	  
end
