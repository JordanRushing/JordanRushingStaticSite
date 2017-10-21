# config.ru
require 'roda'
Roda.route { "Hello, World!" }
run Roda.app
