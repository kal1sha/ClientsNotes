class PeoplesController < ApplicationController

	def new
		@people = People.new
	end

	def create
	  @people = People.new(params[:people])	 
	  if @people.save
	    redirect_to :action => :show, :id => @people.id
	  else
	    render 'new'
	  end
	end

	def show
	  @people = People.find(params[:id])
	end

	def index
	  @peoples = People.all
	end

	def edit
	  @people = People.find(params[:id])
	end

	def update
	  @people = People.find(params[:id])
	 
	  if @people.update_attributes(params[:people])
	    redirect_to :action => :show, :id => @people.id
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @people = People.find(params[:id])
	  @people.destroy
	 
	  redirect_to :action => :index
	end

end
