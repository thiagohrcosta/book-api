class BooksController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR author ILIKE :query"
      @books = policy_scope(Book.where(sql_query, query: "%#{params[:query]}%"))
      authorize @books
    else
      @books = Book.all
      authorize @books
    end
  end
end
