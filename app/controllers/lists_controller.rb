class ListsController < ApplicationController

    def index
        @list = List.all    
    end

    def show
        @list = List.find(params[:id])
        @bookmark = Bookmark.new
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.save
        redirect_to lists_path(@list)
    end

    def Bookmarks
        @list = List.find(params[:id])
        @list.bookmarks
    end

    private

    def list_params
        params.require(:list).permit(:name, :photo)
    end

end
  