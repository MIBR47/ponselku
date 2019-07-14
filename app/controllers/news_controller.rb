class NewsController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show]
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
	  @new.image.attach(new_params[:image])
	  @new.save
	  redirect_to @new
	end

	def edit
		@new = New.find(params[:id])

	end

	def update
	  	@new = New.find(params[:id])
	 	@new.image.attach(new_params[:image])
	  	if @new.update(new_params)
	    	redirect_to @new
	  	else
	    	render 'edit'
	  	end
	end
 
private
	def new_params
		params.require(:new).permit(:image, :title, :text)
	end
end
