workers 2
threads 0, 16
bind 'tcp://0.0.0.0:10002'
environment 'production'
daemonize true

directory '/home/deployer/warehouse/current'
rackup '/home/deployer/warehouse/current/config.ru'
pidfile '/home/deployer/warehouse/shared/tmp/pids/puma.pid'
stdout_redirect '/home/deployer/warehouse/shared/log/puma.stdout.log', '/home/deployer/warehouse/shared/log/puma.stderr.log', true
state_path '/home/deployer/warehouse/shared/tmp/sockets/puma.state'

on_restart do
  puts 'On restart...'
end

on_worker_boot do
  puts 'On worker boot...'
end

after_worker_boot do
  puts 'On worker boot...'
end

prune_bundler
