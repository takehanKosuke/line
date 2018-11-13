require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, 'log/cron.log'
set :environment, :production

every 1.minute do
  runner "Task.count_of_inappropriate_words"
end
