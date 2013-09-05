require 'furter'
require 'require_all'
require 'rspec/expectations'


require_rel '/screens'



World(Furter::Navigation)

APP_BUNDLE_PATH = File.expand_path( '/Users/itqa1/app/31gifts/iOS/Frank/frankified_build/Frankified.app', __FILE__ )

Frank::Cucumber::FrankHelper.use_shelley_from_now_on

Furter::Navigation.routes = {

    :default => [],
    :order_estimator => [
        [LoginScreen, :login],
        [HomeScreen, :click_menu],
        [HomeScreen, :click_order_estimator],
        [ItemScreen, :search_for_item]
    ],
    :stats => [
        [LoginScreen, :login],
        [HomeScreen, :click_menu],
        [HomeScreen, :click_stats],
        [StatsScreen, :screen_verification]
    ],
    :order_history => [
        [LoginScreen, :login],
        [HomeScreen, :click_orders],
        [OrderHistoryScreen, :click_party_order],
        [OrderHistoryScreen, :click_guests],
        [GuestOrderScreen, :click_items]
    ],
    :order_history_retail => [
        [LoginScreen, :login],
        [HomeScreen, :click_orders],
        [OrderHistoryScreen, :click_retail_order],
        [OrderHistoryScreen, :click_guests]
    ],
    :contacts => [
        [LoginScreen, :login],
        [HomeScreen, :add_contact],
        [ContactsScreen, :add_new_contact]
    ],
    :search_contacts => [
        [LoginScreen, :login],
        [HomeScreen, :click_menu],
        [HomeScreen, :click_contacts],
        [ContactsScreen, :search_contact]
    ],



}