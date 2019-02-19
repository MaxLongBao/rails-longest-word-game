class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @final_word = []
    @word = params[:word].split('')
    @letters = params[:letters].split(' ')
    @word.each do |letter|
      if @letters.include?(letter)
        @final_word << letter
      else
        @final_word = []
        break
      end
    end
  end
end
