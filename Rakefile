DEVELOPMENT_PROFILE = '73314eba-d509-473d-a07c-3ca91128bf03'
DISTRIBUTION_PROFILE = '18f75652-37ac-476c-867b-5a6165c43de3'

DEVELOPMENT_CERT = 'iPhone Developer: Evan Sobkowicz (26958FJYJ9)'
DISTRIBUTION_CERT = 'iPhone Distribution: Evan Sobkowicz (BFBSCX5789)'

# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'sugarcube-all'
require 'motion-pixatefreestyle'
require 'motion-map'
require 'motion-blitz'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'PickPerson'

  app.version = '0.2'

  app.sdk_version = '8.0'
  app.deployment_target = '7.1'

  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right]

  app.identifier = 'com.esobko.pickperson'
  app.seed_id = 'BFBSCX5789'
  app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
  app.entitlements['keychain-access-groups'] = [
    app.seed_id + '.' + app.identifier
  ]

  app.fonts = ['fontawesome-webfont.ttf']

  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'

  app.pods do
    pod 'SVProgressHUD'
  end

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

  app.icons = Dir.glob('resources/Icon*.png').map{|icon| icon.split('/').last}
  app.info_plist['UILaunchImages'] = [
    # iphone
    {
      'UILaunchImageName' => 'Default',
      'UILaunchImageOrientation' => 'Portrait',
      'UILaunchImageMinimumOSVersion' => '7.0',
      'UILaunchImageSize' => '{320, 480}'
    },
    {
      'UILaunchImageName' => 'Default-568h',
      'UILaunchImageOrientation' => 'Portrait',
      'UILaunchImageMinimumOSVersion' => '7.0',
      'UILaunchImageSize' => '{320, 568}'
    },
    {
      'UILaunchImageName' => 'Default-667h',
      'UILaunchImageOrientation' => 'Portrait',
      'UILaunchImageMinimumOSVersion' => '8.0',
      'UILaunchImageSize' => '{375, 667}'
    },
    {
      'UILaunchImageName' => 'Default-736h',
      'UILaunchImageOrientation' => 'Portrait',
      'UILaunchImageMinimumOSVersion' => '8.0',
      'UILaunchImageSize' => '{414, 736}'
    },
    # ipad
    {
      'UILaunchImageName' => 'Default-Portrait',
      'UILaunchImageOrientation' => 'Portrait',
      'UILaunchImageMinimumOSVersion' => '7.0',
      'UILaunchImageSize' => '{768, 1024}'
    },
    {
      'UILaunchImageName' => 'Default-Landscape',
      'UILaunchImageOrientation' => 'Landscape',
      'UILaunchImageMinimumOSVersion' => '7.0',
      'UILaunchImageSize' => '{768, 1024}'
    }
  ]

end

task :"build:simulator" => :"schema:build"
task :"build:simulator" => :"schema:build"
