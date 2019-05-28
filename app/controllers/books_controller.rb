class BooksController < ApplicationController

	def index
		if params[:search] == '' || params[:search] == nil
			@books = Book.all
		else
			@book = Book.find_by(title: params[:search].downcase)
			@author = Author.find_by(name: params[:search].downcase) if @book == nil
		end
	end
end
