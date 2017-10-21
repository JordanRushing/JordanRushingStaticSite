require 'roda'
require 'tilt/erb'

# Basic routing tree logic to render the index.erb template
class App < Roda
  plugin :render

  route do |r|
    r.root do
      view(:index)
    end
  end
end
