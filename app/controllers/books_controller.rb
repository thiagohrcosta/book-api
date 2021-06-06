class BooksController < ApplicationController
  before_action :set_book, except: [:index]
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR author ILIKE :query"
      @books = policy_scope(Book.where(sql_query, query: "%#{params[:query]}%"))
      authorize @books
    else
      @books = policy_scope(Book)
      authorize @books
    end
  end

  def show;end

  def edit;end

  def update
    if @book.update(book_params)
      redirect_to book_path
    else
      render :new
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :publisher, :genre)
  end

  def set_book
    @book = Book.find(params[:id])
    authorize @book
  end

end
