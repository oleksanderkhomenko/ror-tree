class TreesController < ApplicationController
  before_action :set_tree, only: %i[edit update show destroy]
  def index
    # @trees = Tree.where(:user_id => current_user.id)
    @trees = current_user.trees.all
  end

  def new
    @tree = Tree.new
  end

  def create
    # @tree = current_user.trees.create!(tree_params)
    @tree = current_user.trees.new(tree_params)
    if @tree.save
      redirect_to @tree
    else
      render 'new'
    end
  end

  def edit
    # @tree = Tree.find(params[:id])
  end

  def update
    # @tree = Tree.find(params[:id])
    if @tree.update(tree_params)
      redirect_to @tree
    else
      render 'edit'
    end
  end

  def show
    # @tree = Tree.find(params[:id])
  end

  def destroy
    # @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to trees_path
  end

  private

  def tree_params
    params[:tree].permit(:name)
  end

  def set_tree
    @tree = current_user.trees.find(params[:id])
  end

end
