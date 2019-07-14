class NewsController < ApplicationController
	def index
		@news = New.all
	end
	def show
    @new = New.find(params[:id])
  	end

	def new
	end

	def create
	  @new = New.new(new_params)
	 
	  @new.save
	  redirect_to @new
	end
 
private
	def new_params
		params.require(:new).permit(:title, :text)
	end
end
