class BooksController < ApplicationController
   def show
  	  @book = Book.find(params[:id])
   end

   def index
  	  @books = Book.all
  	  @book = Book.new
   end

   def new
  	  @book = Book.new
   end
   def create
  	  @book = Book.new(book_params)
  	  @books = Book.all
		if @book.save
		flash[:notice] = "Book was successfully created."
		redirect_to books_path(book.id)
  	else
  		render :index
  	end
  end

  def edit
      @book = Book.find(params[:id])
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
    redirect_to books_path
  end

  def update
  	 book = Book.find(params[:id])
  	 book.update(book_params)
     redirect_to books_path(book.id)
  end

  private

  def book_params
  	  params.require(:book).permit(:title, :body)
  end
end
