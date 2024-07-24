# frozen_string_literal: true
require './app'
require 'rack/deflater'
require 'rack/protection'

use Rack::Deflater
use Rack::Protection

require './app'
run App.freeze
