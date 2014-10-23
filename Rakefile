# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'ibeacon_test'
  app.frameworks << 'CoreLocation'
  app.frameworks << 'IOBluetooth'
  app.frameworks << 'IOBluetoothUI'
end
