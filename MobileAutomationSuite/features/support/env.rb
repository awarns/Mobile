
require 'furter'
require 'require_all'
require 'rspec-expectations'


require_rel '/screens'


World(Furter::Navigation)

APP_BUNDLE_PATH = File.expand_path( '/Users/itqa1/app/31gifts/iOS/Frank/frankified_build/Frankified.app', __FILE__ )

Frank::Cucumber::FrankHelper.use_shelley_from_now_on

