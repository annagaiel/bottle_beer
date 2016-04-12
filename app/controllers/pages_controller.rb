class PagesController < ApplicationController

  def index
    count = 99
    @lyrics = []
    while count > 0
        @lyrics << "#{count} bottle of beer on the wall, #{count} bottle of beer."
        count = count - 1
        if count > 1
            @lyrics << "Take one down and pass it around, #{count} bottles of beer on the wall."
        else
            @lyrics << "Take one down and pass it around, no more bottles of beer on the wall."
        end
    end
    @lyrics << "No more bottles of beer on the wall, no more bottles of beer."
    @lyrics << "Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  def lottery
    @lottery = []
    while @lottery.size < 5 do
      number = rand(1..9)
      @lottery << number unless @lottery.include?(number)
    end
  end

  def fortune
    fortune_list = [
      'A fresh start will put you on your way.',
      'A friend asks only for your time not your money.',
      'A friend is a present you give yourself.',
      'A pleasant surprise is waiting for you.',
      'A smile is your personal welcome mat.'
                   ]
    @fortune = fortune_list.sample
  end

  def counter_views
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
    @counter_views = session[:counter]
  end
end
