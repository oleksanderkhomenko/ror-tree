class IndividualsController < ApplicationController
  before_action :set_individual, only: %i[edit update show destroy]
  def index
    @individuals = current_user.individuals.all
  end

  def new
    @individual = Individual.new
  end

  def create
    @individual = current_user.individuals.new(individual_params)
    if @individual.save
      redirect_to @individual
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @individual.update(individual_params)
      redirect_to @individual
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @individual.destroy
    redirect_to individuals_path
  end

  private

  def individual_params
    params[:individual].permit(:first_name, :last_name, :gender, :date_of_birth, :date_of_death)
  end

  def set_individual
    @individual = current_user.individuals.find(params[:id])
  end
end
