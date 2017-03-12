class LibrariesController < ApplicationController
  def index
    @libs = Library.all
  end

  def show
    lib_id = params[:id]
    @lib = Library.find_by_id(lib_id)
  end

  def new
    @lib = Library.new
  end

  def create
    
  end
end
