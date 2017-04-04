class Supports::ProfileUser
  def initialize user
    @user = user
  end

  def newest_questions
    @newest_questions = @user.questions.order_new_questions
  end

  def votest_questions
    @votest_questions = @user.questions.order_vote_questions
  end

  def top_posts
    @top_posts = @user.questions.order_vote_questions.limit(5)
  end

  def newest_answers
    @newest_answers = @user.answers.order_new_answers
  end

  def votest_answers
    @votest_answers = @user.answers.order_vote_answers
  end
end
