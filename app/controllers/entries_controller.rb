class EntriesController < ApplicationController

	# GET /entries
	def index 
		@entry = Entry.new
		@entries = Entry.all
	end

	# POST /entries
	def create
		@entry = Entry.new(entry_params)
		if @entry.save
			redirect_to '/' #could be root?
		else
			@errors = @entry.errors.full_messages
			render :new
		end
	end

	def new
		@entry = Entry.new
	end

	private
	def entry_params
		params.require(:entry).permit(:title, :body, :author_id)
	end

end


## The Sinatra Way: 
# get '/entries/' do
# 	@entries = Entry.all
# 	erb :'entries/index'
# end