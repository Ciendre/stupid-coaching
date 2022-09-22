class QuestionsController < ApplicationController

def ask
end

def answer
  @ask = params[:ask]
  if @ask.blank?
    @answer = "Ca ne marche pas"
  elsif @ask == "Je suis entrain de travailler"
    @answer = "Bien!"
  elsif @ask.include?("?")
    @answer = "Pourquoi tu poses une question"
  else
    @answer = "Arrête de dire des betises et va travailler"
  end
  end

end
