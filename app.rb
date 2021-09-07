# frozen_string_literal: true

require 'roda'

class App < Roda
  plugin :render
  plugin :head

  route do |r|
    r.root do
      view :about
    end
  end
end
