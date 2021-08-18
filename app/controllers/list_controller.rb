class ListController < ApplicationController

    def index
        @list = List.all    
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new (list_params)
        @list.save
    end

    def show
        @list = List.find (params[:id])
        @list.bookmarks
    end

    private

    def list_params
        params.require(:list)permit(:name)
    end

end
