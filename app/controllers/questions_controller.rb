class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    if @question.upcase.include? "?"
     @answer = "I can feel your motivation! Silly question, get dressed and go to work!"

    elsif @question == @question.upcase
     @answer = "I can feel your motivation! I don't care, get dressed and go to work!"

    elsif @question.include? "?"
     @answer = "Silly question, get dressed and go to work!"

    elsif @question == @question.downcase
     @answer = "I don't care, get dressed and go to work!"

    else
     @answer = "Hello Coach!"
    end
  end

end
