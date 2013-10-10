class BooksController < ApplicationController
  def index
    if params[:query].present?
      @books = Book.search(params[:query], page: params[:page])
    else
      @books = Book.all.page params[:page]
    end
  end

  def autocomplete
    render json: Book.search(params[:query], autocomplete: true, limit: 10).map(&:title)
  end

  def import
    book = Book.import params[:olid]
    notice = "Imported #{book.title}"
    redirect_to books_path, notice: notice
  rescue Book::ImportError
    redirect_to books_path, alert: "Failed to import book"
  end
end
