DEVELOPMENT_PROFILE = '5dda861b-2075-4286-974b-e36586efc9b7'
DISTRIBUTION_PROFILE = 'b414b398-1e38-4926-a5a6-47d9f48358c8'
ADHOC_PROFILE = 'e1aa3ac0-1bad-4ce1-a66a-e35a4591b78f'

DEVELOPMENT_CERT = 'iPhone Developer: Evan Sobkowicz (26958FJYJ9)'
DISTRIBUTION_CERT = 'iPhone Distribution: Evan Sobkowicz (BFBSCX5789)'

# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'sugarcube-all'
require 'motion-pixatefreestyle'
require 'motion-map'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'PickPerson'

  app.version = '0.2'

  app.sdk_version = '8.0'
  app.deployment_target = '7.1'

  app.device_family = [:iphone]
  app.interface_orientations = [:portrait]

  app.identifier = 'com.esobko.pickperson'
  app.seed_id = 'BFBSCX5789'
  app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
  app.entitlements['keychain-access-groups'] = [
    app.seed_id + '.' + app.identifier
  ]

  app.fonts = ['fontawesome-webfont.ttf']

  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'

  app.release do
    app.codesign_certificate = DISTRIBUTION_CERT
    app.provisioning_profile = "/Users/evan/Library/MobileDevice/Provisioning Profiles/#{DISTRIBUTION_PROFILE}.mobileprovision"
    app.entitlements['get-task-allow'] = false
    app.entitlements['beta-reports-active'] = true
  end

  app.development do
    app.codesign_certificate = DEVELOPMENT_CERT
    app.provisioning_profile = "/Users/evan/Library/MobileDevice/Provisioning Profiles/#{DEVELOPMENT_PROFILE}.mobileprovision"
    app.entitlements['get-task-allow'] = true
  end

end
task :"build:simulator" => :"schema:build"
task :"build:simulator" => :"schema:build"
