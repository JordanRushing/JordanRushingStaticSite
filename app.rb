require 'roda'

# Basic routing tree logic to render the index.erb template
class App < Roda
  plugin :render

  route do |r|
    r.root do
      view(:index)
    end

    r.get('/home') do
      r.redirect('/')
    end

    r.get('/about') do
      view(:about)
    end
  end
end
