require 'roda'

# Basic routing tree logic to render the index.erb template
class App < Roda
  plugin :render

  route do |r|
    r.root do
      view(:index)
    end

    r.on('/home') do
      r.redirect('/')
    end

    r.on('/about') do
      view(:about)
    end
  end
end
