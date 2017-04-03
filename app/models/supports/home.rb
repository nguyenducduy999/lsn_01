class Supports::Home
  def initialize
  end

  def list_question
    Question.all
  end

  def hot_question
    Question.hot_questions
  end

  def list_class
    Category.roots
  end

  def list_object
    Category.leaves.map(&:name).uniq
  end

  def hot_user
    User.hot_user
  end
end
