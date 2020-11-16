class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end
  def answer
    @question = params[:question]
    @answer = ""
    if @question.include?("?")
      return @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!" || @question == "I AM GOING TO WORK RIGHT NOW!"
      return @answer = "Great!"
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
