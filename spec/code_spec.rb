require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE
RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

describe "average" do
  it "returns the average grade" do
    list = [98,95,88,97,74]
    expect(average(list)).to eq(90.4)
  end
end

describe "rankings" do
  it "prints each student in order of ranking" do
    students = rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
    expect(students).to eq(rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]))
  end
end

describe "greet" do
  it "prints out name with selected language" do
    selected_language = "spanish"
    names = "John"
    expect(greet(names, selected_language)).to eq("Hola John!")
  end

  it "prints out name with selected language" do
    selected_language = "italian"
    names = "Ant-Man"
    expect(greet(names, selected_language)).to eq("Ciao Ant-Man!")
  end

  it "prints out name with selected language" do
    selected_language = "french"
    names = "Thor"
    expect(greet(names, selected_language)).to eq("Bonjour Thor!")
  end

  it "prints out name with selected language" do
    selected_language = []
    names = "Celestial"
    expect(greet(names, selected_language)).to eq("Hi Celestial!")
  end
end

describe "create_puzzle" do
  it "prints _ for all letters that are guessed incorrectly " do
    expect(create_puzzle("Ultron", "Ultron")).to eq("U l t r o n")
  end

  it "prints _" do
    puzzle_word = 'onomatopoeia'
    expect(create_puzzle("onomatopoeia")).to eq("_ _ _ _ _ _ _ _ _ _ _ _")
  end
end

describe "divisible_by_three" do
  it "prints true for 6" do
    expect(divisible_by_three(6)).to eq(true)
  end

  it "prints false for 17" do
    expect(divisible_by_three(17)).to eq(false)
  end
end

describe "perfect_square?" do
  it "prints true for 25" do
    expect(perfect_square?(25)).to eq(true)
  end

  it "prints false for 5" do
    expect(perfect_square?(5)).to eq(false)
  end

  it "prints ArgumentError" do
    print_out = "number must be greater than or equal to one"
    expect(perfect_square?(0)).to eq(ArgumentError)
  end
end
