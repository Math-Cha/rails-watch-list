class BookMarksController < ApplicationController

  def index
    @BookMarks = BookMark.all
  end

  def new
    @BookMark = BookMark.new
  end

  def create
    @BookMark = BookMark.new(BookMark_params)
    @BookMark.save
    redirect_to BookMark_path(@BookMark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

    private

  def BookMark_params
    params.require(:BookMark).permit(:name)
  end

end
