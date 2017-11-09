require 'roda'

# App routing tree logic that takes the template for the
# requested route and renders through layout.rb via Tilt
class App < Roda
  plugin :render

  route do |r|
    r.root do
      view :about
    end

    r.is 'home' do
      r.redirect '/'
    end

    r.is 'posts' do
      r.get do
        view :index
      end
    end

    r.is 'contact' do
      r.get do
        view :contact
      end
    end
  end
end
