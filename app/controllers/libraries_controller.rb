class LibrariesController < ApplicationController
  def index
    @libs = Library.all
  end

  def show
    lib_id = params[:id]
    @lib = Library.find_by_id(lib_id)
    @users = @lib.users
  end

  def new
    @lib = Library.new
  end

  def create
    lib = Library.create(lib_params)
    if lib.save
      redirect_to library_path(lib)
    end
  end

  private

  def lib_params
    params.require(:library).permit(:name, :floor_count, :floor_area)
  end
end
