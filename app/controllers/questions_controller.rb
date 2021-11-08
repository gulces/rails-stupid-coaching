class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params['question']
    # @response = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if @question.downcase == 'i am going to work'
      @response = 'Great!'
    elsif @question[-1] == '?'
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
