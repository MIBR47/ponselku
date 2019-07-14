class PhonesController < ApplicationController
	def index
		@phone = Phone.all
	end
	def show
		@phone = Phone.find(params[:id])
	end

	def new

	end

	def edit
		@phone = Phone.find(params[:id])
	end

	def create
		@phone = Phone.new(phone_params)

		@phone.save
		redirect_to @phone
	end

	def update
	  	@phone = Phone.find(params[:id])
	 
	  	if @phone.update(phone_params)
	    	redirect_to @phone
	  	else
	    	render 'edit'
	  	end
  	end




private
  def phone_params
    params.require(:phone).permit(:brand, :os, :chipset, :cpu, :gpu, :memory, :camera, :front_camera, :battrey)
  end
end
