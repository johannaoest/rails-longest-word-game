class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    binding.pry
    @guess = params[:guess]
    letters = params[:letters]

    if @guess
      guess.split.each do |letter|
        letters.include? letter
      end
  end
end
