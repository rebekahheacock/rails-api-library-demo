class BooksController < ApplicationController
  # before show, update, and destroy
  # run the set_book method
  # to find the correct book by id
  before_action :set_book, only: [:show, :update, :destroy]

  def set_book
    @book = Book.find(params[:id])
  end

  # rails convention when requiring data (create, update)
  # want rails to verify that we have correct data
  # this matches:
  # "book": {
  #   "title": "sample title",
  #   "author": "sample author"
  # }
  # This requires a root key of book
  # will permit the client to send a title and author as well. 
  # could also require title & author, if we wanted to
  def book_params
    params.require(:book).permit(:title, :author_id)
  end

  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
    # or
    # render json Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      # HTTP 204 no content
      head :no_content
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    head :no_content
  end

  # keep set_book and book_params methods private
  private :set_book, :book_params
end
