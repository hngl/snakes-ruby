# frozen_string_literal: true

require './game.rb'

board = [
  9, nil, 7, nil, nil,
  17, nil, 5, nil, nil,
  nil, 18, 10, nil, nil,
  nil, nil, nil, 23, 15,
  nil, nil, nil, 16, nil
]

game = Game.new(board)

game.play
