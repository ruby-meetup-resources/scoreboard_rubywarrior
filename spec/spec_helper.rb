require 'rubygems'
require 'rspec'
require 'pry'
require 'webmock/rspec'

require File.dirname(__FILE__) + '/../lib/scoreboard_rubywarrior'

RSpec.configure do |config|
  config.before(:each) do
    RubyWarrior::Config.reset
  end
end
