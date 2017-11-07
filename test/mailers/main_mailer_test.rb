require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
  	question = Question.create email:"a@b.c", body:"ABC"
  	answer = Answer.create email:"d@e.f", body:"DEF"
  	question.answer << answer
    mail = MainMailer.notify_question_author(answer)
    assert_equal "Hello", mail.subject
    assert_equal ["a@b.c"], mail.to
    assert_equal ["d@e.f"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
