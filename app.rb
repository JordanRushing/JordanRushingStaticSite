require 'roda'

module TestSite
  class WebApp < Roda
    route do |r|
      r.root do
        render(index)
      end
    end
  end
