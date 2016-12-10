class AnswersController < ApplicationController
  before_action :set_question

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    
    @answer = @question.answers.new(answer_params)
    if @answer.save
      flash[:notice] = 'Answer successfully created.'
      redirect_to @question
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  protected

  def answer_params
    params.require(:answer).permit(:body)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

end
