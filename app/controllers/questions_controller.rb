class QuestionsController < ApplicationController
  def create
  	Question.create(question_params)
    session[:current_user] = question_params[:email]
  	redirect_to root_path
  end
  def show
  	@question = Question.find(params[:id])
  	@answers = @question.answer.all
  end
  def question_params
  	params.require(:question).permit(:email,:body)
  end
end
