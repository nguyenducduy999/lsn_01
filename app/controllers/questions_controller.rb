class QuestionsController < ApplicationController
  def show
    @question = Question.find_by id: 1
    @answers = @question.answers
  end
end
