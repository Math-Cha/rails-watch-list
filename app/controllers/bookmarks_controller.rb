class BookMarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]
  # def index
  #   @BookMarks = BookMark.all
  # end

  def new
    @BookMark = BookMark.new
  end

  def create
    @BookMark = BookMark.new(bookMark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

    private

  def bookMark_params
    params.require(:BookMark).permit(:comment, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end


end
