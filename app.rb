# frozen_string_literal: true

require 'roda'

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
        view :posts
      end
    end

    r.is 'contact' do
      r.get do
        view :contact
      end
    end
  end
end
