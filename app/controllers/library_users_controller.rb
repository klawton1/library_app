class LibraryUsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @libs = @user.libraries
  end
  def create
    lib_id = params[:library_id]
    lib = Library.find(lib_id)
    lib.users << current_user
    redirect_to user_libraries_path(current_user)
  end
end
