class QuestionsController < ApplicationController
  def show
    @question = Question.find_by id: params[:id]
    if @question.nil?
      flash[:danger] = t "not_found"
      redirect_to root_path
    else
      @answers = @question.answers
    end
  end
end
