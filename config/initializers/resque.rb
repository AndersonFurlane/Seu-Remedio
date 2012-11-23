# ENV["REDISTOGO_URL"] ||= "redis://username:password@host:1234/"
# uri = URI.parse(ENV["REDISTOGO_URL"])

# Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

require 'resque/server'
require 'resque_scheduler'

Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }
Resque.schedule = YAML.load_file("#{Rails.root}/config/resque_schedule.yml")

rails_root = Rails.root || File.dirname(__FILE__) + '/../..'
rails_env = Rails.env || 'development'

resque_config = YAML.load_file(rails_root.to_s + '/config/resque.yml')
Resque.redis = resque_config[rails_env]