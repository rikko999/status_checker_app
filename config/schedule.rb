env :PATH, ENV['PATH']
env :GEM_PATH, ENV['GEM_PATH']
set :environment, 'development'
set :output, error: 'log/cron_error_log.log', standard: 'log/cron_log.log'

every 1.minute do
  runner 'SitesService.call'
end
