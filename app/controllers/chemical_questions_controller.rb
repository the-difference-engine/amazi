class ChemicalQuestionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @chemical_questions = ChemicalQuestion.all
  end

  def new
    @chemical_question = ChemicalQuestion.new
  end

  def edit
    @chemical_question = ChemicalQuestion.find(params[:id])
  end

  def create
    @chemical_question = ChemicalQuestion.new(chemical_question_params)

    if @chemical_question.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @chemical_question = ChemicalQuestion.find(params[:id])
    @chemical_question.attributes = chemical_question_params

    if @chemical_question.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @chemical_question = ChemicalQuestion.find(params[:id])
    if @chemical_question.destroy
      redirect_to "/admin"
    else

    end
  end

  protected

  def chemical_question_params
    params.require(:chemical_question).permit(:question, :answer, :chemical_id)
  end
end
