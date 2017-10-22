require 'roda'

# App routing tree logic that takes the template for the
# requested route and renders through layout.rb via Tilt
class App < Roda
  plugin :render

  route do |r|
    r.root do
      view :index
    end

    r.is 'home' do
      r.redirect '/'
    end

    r.is 'about' do
      r.get do
        view :about
      end
    end

    r.is 'contact' do
      r.get do
        view :contact
      end
    end
  end
end
