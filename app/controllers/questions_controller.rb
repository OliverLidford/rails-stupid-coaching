class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    # Your code to generate an answer based on the question goes here
    if @question.blank?
      @answer = "I can't hear you!"
      elsif @question == "I am going to work"
        @answer = 'Great!'
      elsif @question.ends_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
    end
  end
end
