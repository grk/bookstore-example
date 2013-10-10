class BooksController < ApplicationController
  def index
    @books = Book.all.page params[:page]
  end

  def import
    book = Book.import params[:olid]
    notice = "Imported #{book.title}"
    redirect_to books_path, notice: notice
  rescue Book::ImportError
    redirect_to books_path, alert: "Failed to import book"
  end
end
