class QuestionsController < ApplicationController

  def ask
    # @query = params[:query]
    # raise
  end

  def answer
    @query = params[:query]
    @coach = coach_answer(@query)
  end

  def coach_answer(query)
    if query == "I am going to work"
      return "Great!"
    elsif query.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
