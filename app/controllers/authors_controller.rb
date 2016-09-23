class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]

  def set_author
    @author = Author.find(params[:id])
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
  def author_params
    params.require(:author).permit(:given_name, :surname)
  end

  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    render json: @author
    # or
    # render json Book.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :created
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  def update
    if @author.update(author_params)
      # HTTP 204 no content
      head :no_content
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @author.destroy
    head :no_content
  end

  # keep set_book and book_params methods private
  private :set_author, :author_params
end
