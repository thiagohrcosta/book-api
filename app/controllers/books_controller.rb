class BooksController < ApplicationController

  def index
    @books = policy_scope(Book)
    authorize @books
  end
end
