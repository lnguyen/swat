#!/usr/bin/env ruby encoding: UTF-8

lib = File.join(File.dirname(__FILE__), 'lib')
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'puma'
require 'rack/handler/puma'
require 'swat'

::Rack::Handler::Puma.run ::Swat.application, { :Port => 8001 }

