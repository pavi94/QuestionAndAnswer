# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_author
  def notify_question_author
  	question = Question.create email:"a@b.c", body:"ABC"
  	answer = Answer.create email:"d@e.f", body:"DEF"
  	question.answer << answer
    MainMailer.notify_question_author(answer)
  end

end
