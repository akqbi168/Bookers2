class BooksController < ApplicationController

<<<<<<< HEAD
    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @books.save
            redirect_to books_path
        else
            render :new
        end
    end

    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    private
        def book_params
            params.require(:book).permit(:title, :body)
        end
=======
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
    def book_params
        params.require(:book).permit(:title, :body)
    end
>>>>>>> origin/master

end
