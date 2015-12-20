class StoragesController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def index
    @postings = Storage.all
  end

  def new
  end

  def create
    user = User.find(current_user.id)
    new_post = user.storages.new(storage_params)
    if new_post.save
      redirect_to '/'
    else
      render '/storages/new'
    end
  end

  def show
    @storage = Storage.find(params[:id])
  end

  def edit
    @new_post = Storage.find(params[:id])
  end

  def update
    post = Storage.find(params[:id])
    if post.update_attributes(storage_params)
      redirect_to '/'
    else
      render '/storages/edit'
    end
  end

  def destroy
    post = Storage.find(params[:id])
    if current_user === post.user
      post.destroy
      redirect_to '/'
    else
      redirect_to '/?error_deleting_post'
    end
  end

  private

  def storage_params
    params.require(:new_post).permit(:title, :price, :location, :description)
  end
end
