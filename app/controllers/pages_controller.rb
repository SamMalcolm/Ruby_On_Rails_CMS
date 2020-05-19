class PagesController < ApplicationController
	def index
		@pages = Page.order('position ASC')
	end
  
	def show
		@page = Page.find(params[:id])
	end
  
	def new
		@page = Page.new
		@page.visible = false
	end
  
	def create
		@page = Page.new(page_properties)
		if @page.save
			redirect_to(pages_path)
		else
			render('new')
		end
	end
  
	def edit
		@page = Page.find(params[:id])
	end
  
	def update
		@page = Page.find(params[:id])
		if @page.update(page_properties)
			redirect_to(page_path(@page))
		else
			render('edit')
		end
	end	
  
	def delete
		@page = Page.find(params[:id])
	end
  
	def destroy
		@page = Page.find(params[:id])
		@page.destroy
		redirect_to(page_path)
	end

	private 
		def page_properties
			params.require(:page).permit(:name, :permalink, :position, :subject_id, :visible, :content)
		end

end
