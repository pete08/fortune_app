class Api::MyExamplesController < ApplicationController
  def fortunepull
    fortune = ["The day bodes well", "Outlook Shady", "You can count on it!"]
    fortune = fortune.shuffle
    @message = fortune[0]
    render 'random_fortune.json.jb'
  end

  def lottery
    numbers = []
    numbersdrawn = []
    60.times do
      numbers << (numbers.length + 1)
    end
    numbers = numbers.shuffle
    6.times do
      numbersdrawn << numbers.shift
    end

    @numbers = numbers
    @numbersdrawn = numbersdrawn

    render 'lottery_numbers.json.jb'
  end

end
