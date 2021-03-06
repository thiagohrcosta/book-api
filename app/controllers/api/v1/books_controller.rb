class Api::V1::BooksController < Api::V1::BaseController
  def index
    @books = policy_scope(Book)
    authorize @books
  end
end
