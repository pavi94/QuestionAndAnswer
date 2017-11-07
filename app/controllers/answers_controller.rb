class AnswersController < ApplicationController
  def create
  	question = Question.find(params[:answer][:question_id])
  	answer = question.answer.create(answer_params)
  	MainMailer.notify_question_author(answer).deliver_now
  	session[:current_user] = answer_params[:email]
  	redirect_to question
  end
  def answer_params
  	params.require(:answer).permit(:email,:body)
  end
end
